import pandas as pd
import os

def main():
    # Construir o caminho do arquivo
    file_path = os.path.join('data', 'dirty_dataset.csv')
    
    try:
        # Ler o arquivo CSV
        df = pd.read_csv(file_path)
        
        # Contar e exibir o número de linhas
        num_linhas = len(df)
        print(f"\nO arquivo {file_path} contém {num_linhas} linhas.\n")
        
    except FileNotFoundError:
        print(f"\nErro: O arquivo {file_path} não foi encontrado.\n")
    except Exception as e:
        print(f"\nErro ao ler o arquivo: {str(e)}\n")

if __name__ == "__main__":
    main()