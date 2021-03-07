import argparse
from csv import reader


def get_cmd_line_args():
    """
    Parse the command line arguments
    """
    ap = argparse.ArgumentParser()

    ap.add_argument("-f", "--path_to_file", required=True)

    args = vars(ap.parse_args())

    quotes_file = args['path_to_file']


    return quotes_file





def get_startrek_quotes(quotes_file):
    """ 
    Get Star Trek Quotes
    """

    try:

        f =  open(quotes_file, mode='r')
   
        for line in f:
            quote, character = line.split('|', 1)
            (character, season_episode) = character.split(',', 1)
            #(season, episode) = season_episode.split(',', 1)

            #print(f'INSERT INTO startrek (character, quote, season, episode) VALUES ("{character.strip()}", {quote.strip()}, "{season.strip()}", "{episode.strip()}");')
            print(f'INSERT INTO startrek (character, quote, episode) VALUES ("{character.strip()}", {quote.strip()}, {season_episode.strip()});')


    except FileNotFoundError as err:
        raise err

    except IOError as err:
        raise err

    finally:
        f.close()





if __name__ == "__main__":
    
    quotes_file = get_cmd_line_args()
    
    get_startrek_quotes(quotes_file)
