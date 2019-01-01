import argparse
import os
import shutil
import robot

CUR_DIR = os.path.abspath(os.path.curdir)
OUTPUT = os.path.join(CUR_DIR, 'output')


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
    rc = robot.run('test_suites', variable=['BROWSER:{}'.format(args.browser)],
                   include=args.include, outputdir=OUTPUT, loglevel=args.loglevel)
    print('RC is: "{}" and post possessing result can start here.'.format(rc))
