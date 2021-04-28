import argparse

parser = argparse.ArgumentParser()
parser.add_argument('filepath', type=str, default=False) 
args = parser.parse_args()

def Main(filepath = args.filepath) -> 'file':
    new_text = ''
    with open(filepath, 'r') as file:
        for line in file:
            new_text += line.strip('\n') + ' '
        new_text.strip()
    
    with open(filepath, 'w') as file:
        file.write(new_text)
    print('This was written in the file:\n',new_text)
    
if __name__ == '__main__':
    Main()
