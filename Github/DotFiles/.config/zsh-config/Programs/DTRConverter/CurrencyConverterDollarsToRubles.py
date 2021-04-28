from bs4 import BeautifulSoup
import requests
import argparse

parser = argparse.ArgumentParser(
    description="This program converts dollars to rubles and vice versa")
parser.add_argument('-rtd', '--rublestodollars',
                    help='If you want to convert rubles to dollars call this function if dollars to rubles just press ENTER',
                    action='store_true', default=False)
args = parser.parse_args()

URL = 'https://www.google.com/search?client=firefox-b-d&q=dollar+to+rub'
HEADERS = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36',
           'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9'
           }


def get_html(url, params=None):
    r = requests.get(url, headers=HEADERS, params=params)
    return r


def get_dollar_to_ruble_value(html=get_html(URL)):
    soup = BeautifulSoup(html.text, 'html.parser')
    value = soup.find(
        'span', class_='DFlfde SwHCTb').get_text(strip=True)
    value = value.split(',')
    value = float(str(value[0])+'.'+str(value[1]))
    return value


if __name__ == '__main__':

    if args.rublestodollars:
        value = get_dollar_to_ruble_value()
        devide = float(
            input('Enter how much rubles(₽) you want convert to dollars($): '))
        answer = devide/value
        print(f'{devide:,.2f}₽ = {answer:,.2f}$')

    else:
        value = get_dollar_to_ruble_value()
        multiply = float(
            input('Enter how much dollars($) you want convert to rubles(₽): '))
        answer = value * multiply
        print(f'{multiply:,.2f}$ = {answer:,.2f}₽')
