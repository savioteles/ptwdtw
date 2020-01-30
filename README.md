# Algoritmo PTWDTW

Versão paralela do algoritmo TWDTW (Time-Weighted Dynamic Time Warping) na GPU e CPU.

Para executar o código precisa dos seguintes parâmetros:

- --help ou -h: "Tela de ajuda"
- --directory ou -d: "Caminho para o diretório com os arquivos usados como entrada de dados das séries temporais e dos padrões".
- --benchmark ou -b: "Caminho para o arquivo que define os parâmetros de execução do benchmark ou benchmarks dos testes".
- --repeat ou -r: "Número de repetições que serão executados os testes definidos no arquivo de benchmark. Este parâmetro é importante para tomada de tempo para descartar possíveis casos discrepantes.".
- --cpu ou -c: "Indica que o benchmark irá ser executado usando os núcleos da CPU".
- --gpu ou -g: "Indica que o benchmark irá ser executado usando os núcleos da GPU".
- --test ou -t: "Flag que indica para gerar dados de testes com grandes séries temporais");
