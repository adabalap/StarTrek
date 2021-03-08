import argparse
import json
import sqlite3
from sqlite3 import Error
from ShiningArmor import twitter




def get_cmd_line_args():
    """
    Parse the command line arguments
    :return: Sqllite3 DB file name, tokens_file
    """
    ap = argparse.ArgumentParser()

    ap.add_argument("-f", "--path_to_DB", required=True)
    ap.add_argument("-t", "--path_to_tokens_file", required=True)

    args = vars(ap.parse_args())

    db_file = args['path_to_DB']
    tokens_file = args['path_to_tokens_file']

    return db_file, tokens_file




def create_db_connection(db_file):
    """ 
    Create a database connection to the SQLite database
    specified by the db_file
    :param db_file: database file
    :return: Connection object or None
    """
    db_conn = None
    try:
        db_conn = sqlite3.connect(db_file)
    except Error as e:
        print(e)

    return db_conn




def close_db_connection(db_conn):
    """
    Close the DB connection
    :parm db_conn: db connection handle
    """
    db_conn.close()
    



def get_startrek_quotes(db_conn):
    """
    Query tasks by priority
    :param conn: the Connection object
    :return: tweet, record_id
    """
    cur = db_conn.cursor()
    cur.execute("SELECT rowid, *                        \
                 FROM startrek                          \
                 WHERE character IN                     \
                 ('Mr. Spock', 'Captain James T. Kirk', \
                  'Dr. McCoy', 'Mr. Scott')             \
                 AND                                    \
                 tweet == 0")

    row = cur.fetchone()

    """
    Current lenght of the tweet's is 280 characters
    """
    while (len(f'{row}') > 280):
        row = cur.fetchone()

    if row:
        # 0: record id
        record_id = row[0]

        # 2: quote
        # 1: character
        tweet = f'{row[2]}\n- {row[1]}'

        # 3: season
        if row[3]:
            tweet = f'{tweet}, {row[3]}'
        
        # 4: episode
        if row[4]:
            tweet = f'{tweet}, {row[4]}'

        # HashTag
        tweet = f'{tweet}\n\n#Startrek #StartrekQuotes'
    else:
        """
        Where are here that means there are no quotes matching the
        criteria
        TDB - Need to add Email/SMS routine to send an alert
        """
        (tweet, record_id) = None, None

    return tweet, record_id




def update_db_record(db_conn, record_id):
    """
    Update the DB record as tweet has been published
    :param1 idb_conn: the Connection object
    :param2 record_id: record_id to be updated  
    :return: 
    """
    cur = db_conn.cursor()
    
    sql = f'UPDATE startrek SET tweet = 1 WHERE rowid == {record_id}'
    cur.execute(sql)
    
    # Commit the changes
    db_conn.commit()




def main():
    # Get Sqlite3 DB file, Twitter Tokens file 
    (db_file, tokens_file) = get_cmd_line_args()

    # Create a database connection
    db_conn = create_db_connection(db_file)
   
    # Get Star Trek Quotes
    (tweet, record_id) = get_startrek_quotes(db_conn)

    if tweet:
        # Get TWITTER tokens and authenticate
        tokens = twitter.tokens(tokens_file)
        api = twitter.auth(tokens)

        # Post the TWEET
        status = twitter.tweet(api, tweet)

        # On successful tweet, update the DB
        if status == 0:
            update_db_record(db_conn, record_id)
    else:
        print('There are no TWEETs to be published')

    # Close DB connection
    close_db_connection(db_conn)


if __name__ == "__main__":
    main() 
