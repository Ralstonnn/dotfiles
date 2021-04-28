import argparse 


parser = argparse.ArgumentParser()
parser.add_argument('packagesString', type=str, default=False, nargs='*')
args = parser.parse_args()


def Main(pckgsArr=args.packagesString):
    pckgsStr = ''
    for line in pckgsArr:
        pckgsStr += line + ' '
    pckgsStr.strip('\n')
    with open('.pythonpackages', 'w+') as ppfile:
        ppfile.write(pckgsStr)

    

if __name__ == '__main__':
    Main()
