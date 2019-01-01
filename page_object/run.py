import argparse
import os
import robot
import shutil
import sys


CUR_DIR = os.path.abspath(os.path.curdir)
OUTPUT = os.path.join(CUR_DIR, 'output')
SRC = os.path.join(CUR_DIR, 'src')


def clean_output():
    print('Clean output')
    shutil.rmtree(OUTPUT)
    os.mkdir(OUTPUT)


if __name__ == '__main__':
    parser = argparse.ArgumentParser('Runner script to easy the usage Robot Framework command line. '
                                     'Unifies the usage and helps integration with CI environments. '
                                     'Build on top of Python argparse, but in practise any scripting '
                                     'language is good fot this usage.\n')
    parser.add_argument('-B', '--browser', default='headlesschrome')
    parser.add_argument('-i', '--include', default=[])
    parser.add_argument('-L',  '--loglevel', default='INFO')
    args = parser.parse_args()
    sys.path.append(SRC)
    rc = robot.run('test', variable=['BROWSER:{}'.format(args.browser)],
                   include=args.include, outputdir=OUTPUT, loglevel=args.loglevel)
    print('RC is: "{}".'.format(rc))
