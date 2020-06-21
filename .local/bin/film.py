#!/usr/bin/python3

import sys, getopt, os
from imdb import IMDb

def film_info(film):
    ia = IMDb()
    print("Searching Film:",film)
    movies = ia.search_movie(film)

    movie = movies[0]
    ia.update(movie, ['technical','vote details','reviews','critic reviews','main','plot'])
    print(movie.get('title'))
    print(movie.get('year'))
    print("Genres:")
    print(movie.get('genres'))
    #print(movie.get('cover url'))
    print("Duration:")
    print(movie.get('tech')['runtime'][0])
    print("Imdbscore:")
    print(movie.get('arithmetic mean'))
    print(movie.get('median'))
    print("Metascore:")
    print(movie.get('metascore'))
    print("Synopsis:")
    print(movie.get('plot')[0])

def main():
    film = ''
    try:
        opts, args = getopt.getopt(sys.argv[1:],"hi:v",["help", "info="])
    except getopt.GetoptError as err:
        print(err)
        print('film.py -i <film>')
        sys.exit(2)
    for o, a in opts:
        if o=='-h':
            print('film -i <film>')
            sys.exit()
        elif o in ("-i","--info"):
            film = a
            head, tail= os.path.split(film)
            film = tail
            pos = film.find("[")
            if pos>0:
                film = film[0:pos-1]
        else:
            assert False,"error"
        film_info(film)
        input("")

if __name__ == "__main__":
    main()




