PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE startrek (
	character VARCHAR(100),
	quote VARCHAR(1000) UNIQUE,
	season VARCHAR(150),
	episode VARCHAR(150)
);
INSERT INTO startrek VALUES('Mr. Spock','Logic is the beginning of wisdom, not the end.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Highly illogical.',NULL,NULL);
INSERT INTO startrek VALUES('Captain Cathryn Janeway','You can use logic to justify almost anything. That’s its power. And it’s flaw.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','I fail to comprehend your indignation, sir. I have simply made the logical deduction that you are a liar.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','You may find that having is not so pleasing a thing as wanting. This is not logical, but it is often true.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','I realize that command does have its fascination, even under circumstances such as these, but I neither enjoy the idea of command nor am I frightened of it. It simply exists, and I will do whatever logically needs to be done.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Live long, and prosper.',NULL,NULL);
INSERT INTO startrek VALUES('Captain Kirk','Things are only impossible until they’re not.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Insufficient facts always invite danger.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Change is the essential process of all existence.',NULL,NULL);
INSERT INTO startrek VALUES('Captain Kirk','Without freedom of choice there is no creativity.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','In critical moments, men sometimes see exactly what they wish to see.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','One man cannot summon the future.',NULL,NULL);
INSERT INTO startrek VALUES('Captain Kirk','But one man can change the present!',NULL,NULL);
INSERT INTO startrek VALUES('Captain Kirk','The prejudices people feel about each other disappear when they get to know each other.',NULL,NULL);
INSERT INTO startrek VALUES('Jean-Luc Picard','If we’re going to be damned, let’s be damned for what we really are.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Without followers, evil cannot spread.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Curious, how often you humans manage to obtain that which you do not want.',NULL,NULL);
INSERT INTO startrek VALUES('Captain Kirk','A species that enslaves other beings is hardly superior, mentally or otherwise.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Evil does seek to maintain power by suppressing the truth.',NULL,NULL);
INSERT INTO startrek VALUES('Edith Keeler','A lie is a very poor way to say hello.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Time is fluid…like a river with currents, eddies, backwash.',NULL,NULL);
INSERT INTO startrek VALUES('Diane Duane','When governments murder those who speak the truth, it is time to get new governments.',NULL,NULL);
INSERT INTO startrek VALUES('Malcolm McDowell J. M. Dillard','Time is the fire in which we burn.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','If there are self-made purgatories, then we all have to live in them.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','… The needs of the many outweigh the needs of the few.',NULL,NULL);
INSERT INTO startrek VALUES('Jean-Luc Picard','It is possible to commit no errors and still lose. That is not a weakness. That is life.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','It is the lot of ‘man’ to strive no matter how content he is.',NULL,NULL);
INSERT INTO startrek VALUES('Jean-Luc Picard','There is a way out of every box, a solution to every puzzle; it’s just a matter of finding it.',NULL,NULL);
INSERT INTO startrek VALUES('Dr. Boyce','A man either lives life as it happens to him, meets it head-on and licks it, or he turns his back on it and starts to wither away.',NULL,NULL);
INSERT INTO startrek VALUES('Jean-Luc Picard','Live now; make now always the most precious time. Now will never come again.',NULL,NULL);
INSERT INTO startrek VALUES('Jean-Luc Picard','With the first link, the chain is forged. The first speech censored, the first thought forbidden, the first freedom denied, chains us all irrevocably.',NULL,NULL);
INSERT INTO startrek VALUES('Captain James T. Kirk','Our species can only survive if we have obstacles to overcome. You remove those obstacles. Without them to strengthen us, we will weaken and die.',NULL,NULL);
INSERT INTO startrek VALUES('Captain James T. Kirk','Perhaps man wasn’t meant for paradise. Maybe he was meant to claw, to scratch all the way.',NULL,NULL);
INSERT INTO startrek VALUES('Captain James T. Kirk','You know the greatest danger facing us is ourselves, and irrational fear of the unknown. There is no such thing as the unknown. Only things temporarily hidden, temporarily not understood.',NULL,NULL);
INSERT INTO startrek VALUES('Edith Keeler','Now, I don’t pretend to tell you how to find happiness and love, when every day is a struggle to survive. But I do insist that you do survive, because the days and the years ahead are worth living for!',NULL,NULL);
INSERT INTO startrek VALUES('Roga Danar','To survive is not enough. To simply exist… is not enough!',NULL,NULL);
INSERT INTO startrek VALUES('Q','It’s not safe out here. It’s wondrous, with treasures to satiate desires both subtle and gross; but it’s not for the timid.',NULL,NULL);
INSERT INTO startrek VALUES('Lai the Vian','Your will to survive, your love of life, your passion to know … Everything that is truest and best in all species of beings has been revealed to you. Those are the qualities that make a civilization worthy to survive.',NULL,NULL);
INSERT INTO startrek VALUES('Dr. McCoy','Compassion: that’s the one things no machine ever had. Maybe it’s the one thing that keeps men ahead of them.',NULL,NULL);
INSERT INTO startrek VALUES('Captain James T. Kirk','We prefer to help ourselves. We make mistakes, but we’re human–and maybe that’s the word that best explains us.',NULL,NULL);
INSERT INTO startrek VALUES('Khan Noonien Singh','Improve a mechanical device and you may double productivity. But improve man, you gain a thousandfold.',NULL,NULL);
INSERT INTO startrek VALUES('Surak','I am pleased to see that we have differences. May we together become greater than the sum of both of us.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Computers make excellent and efficient servants, but I have no wish to serve under them.',NULL,NULL);
INSERT INTO startrek VALUES('Captain James T. Kirk','To boldly go where no man has gone before.',NULL,NULL);
INSERT INTO startrek VALUES('Garth','To all mankind, may we never find space so vast, planets so cold, heart and mind so empty that we cannot fill them with love and warmth',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Humans do have an amazing capacity for believing what they choose, and excluding that which is painful.',NULL,NULL);
INSERT INTO startrek VALUES('Mr. Spock','Pain is a thing of the mind. The mind can be controlled.',NULL,NULL);
INSERT INTO startrek VALUES('Captain James T. Kirk','To be human is to be complex. You can’t avoid a little ugliness, from within, and from without.',NULL,NULL);
INSERT INTO startrek VALUES('Montgomery ''Scotty'' Scott','I canna’ change the laws of physics.',NULL,NULL);
COMMIT;
