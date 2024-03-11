programa
{
	inclua biblioteca Graficos --> g // use o operador --> para nomear a biblioteca para facilitar o acesso ao codigo da biblioteca. Vamos usar o . para acessar.
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> texto

	const inteiro ALTURA_DA_JANELA = 600, LARGURA_DA_JANELA = 800
	const real TAMANHO_DO_TEXTO = 32.0

	const cadeia MENSAGEM_BOAS_VINDAS = "Bem-vind@ ao Confere Asssiduidade da Turma 15!\nVamos conferir a assiduidade dos alunos!!\n"
	const cadeia MENSAGEM_CONTINUAR_PROGRAMA = "\n\nDeseja continuar consultando?\nDigite 1 para SIM e 2 para NÃO.\n"
	const cadeia MENSAGEM_OPCAO_INVALIDA = "\n Opção inválida\n\n"

	const cadeia MENSAGEM_ENTRADA =  "Insira a cadeia do HISTÓRICO DO CHAT \n\n"
	cadeia historico = ""

	const inteiro NUMERO_DE_ALUNOS = 37

	// Todos os nomes da turma
	const cadeia TURMA[NUMERO_DE_ALUNOS] = {
    "Allan Lima Angelo",
    "André De Oliveira Toyomoto",
    "André Luiz Pinheiro Torrres Dos Santos",
    "Andre Sathler Gonçalves",
    "Andressa Rodrigues Figueira Combat",
    "Arthur Canto Frederico",
    "Arthur Pereira Leal",
    "Carolina Rocha Floro",
    "Cristiano Gonçalves De Arruda",
    "Daniel Ribeiro Gabriel",
    "Daniela Bulhões Da Silva",
    "Danilo Ramos Siqueira",
    "Evelyn Cristine Chamorro Aniceto",
    "Felipe Emmanuel Cadena De Almeida",
    "Fernanda De Souza Melo",
    "Gustavo Becario Rodrigues Godinho De Oliveira",
    "Johon Da Cunha Gomes",
    "Jonathan Pinho Cardoso",
    "José Luiz Da Silva Barbosa",
    "Julia Ferreira Coelho",
    "Karen Soares Câmara",
    "Kenny Lucas Bitencourtt Dos Santos",
    "Larissa Rahal Coelho",
    "Leilson Marques Felicio",
    "Leonard Himmelseher",
    "Luciano Oliveira Da Costa",
    "Luis Fernando Da Silva Neves",
    "Marcelo Souza Affonso",
    "Marcio Bokel Pereira Das Neves",
    "Maria Eduarda Bonan Silva",
    "Miguel Ferreira Ramos",
    "Pábullo Muniz Da Silva Motta",
    "Paula Beatriz Murtha Menezes",
    "Paulo Henrique De Mendonça Dias",
    "Raphael Gomes Jorge",
    "Rodrigo Silva Marques",
    "William Soares Da Cunha Silva"
    }

	cadeia presentes[37]
	cadeia ausentes[37]
	
	inteiro opcao = 1
	logico programaLigado = opcao == 1
	
	funcao inicio()
	{
		// Ao inves do faca, vou usar um enquanto, pq como
		// a opcao [e uma variavel global, eu tenho que iniciar ela logo
		// pq nao posso arriscar que o valor s[o vai ser lido aqui
		enquanto(programaLigado) {

			mostrarMensagemEntrada()
			lerDadosDoUsuario()

			conferirPresenca()
			
			verificarSeDevePermanecerLigado()
			
		}
	}

	funcao mostrarMensagemEntrada() {
		escreva(MENSAGEM_ENTRADA)
	}

	funcao lerDadosDoUsuario() {
		// a função leia pode ter vários argumentos, nesse caso, usamos apenas um
		leia(historico)
	}

	funcao verificarSeDevePermanecerLigado() {
		escreva(MENSAGEM_CONTINUAR_PROGRAMA)
		leia(opcao)
		
		se((opcao != 1) e (opcao != 2)) {
			escreva(MENSAGEM_OPCAO_INVALIDA)
			
			escreva(MENSAGEM_CONTINUAR_PROGRAMA)
			leia(opcao)
		}
		programaLigado = opcao == 1 
	}

	funcao mostrarBoasVindas() {
		escreva(MENSAGEM_BOAS_VINDAS)
	}

	funcao conferirPresenca() {
		
		para(inteiro i = 0; i <= NUMERO_DE_ALUNOS; i++) {
			cadeia aluno = TURMA[i]
			// funcao* *inteiro* posicao_texto(*cadeia* texto, *cadeia* cad, *inteiro* posicao_incial)
			inteiro posicaoTexto = texto.posicao_texto(aluno, historico, 0)
			logico alunoPresente = posicaoTexto != -1
			se(alunoPresente) {
				inteiro numeroDeAlunosPresentes = u.numero_elementos(presentes)
				presentes[numeroDeAlunosPresentes - 1] = aluno
				escreva(aluno + " está presente!\n")
			} senao {
				inteiro numeroDeAlunosAusentes = u.numero_elementos(ausentes)
				ausentes[numeroDeAlunosAusentes - 1] = aluno
				escreva(aluno + " está ausente!\n")
			}
		}
		
	}

	

	funcao mostrarMensagemContinuarPrograma() {
		escreva(MENSAGEM_CONTINUAR_PROGRAMA)
		leia(opcao)
		
		se((opcao != 1) e (opcao != 2)) {
			escreva(MENSAGEM_OPCAO_INVALIDA)
			
			escreva(MENSAGEM_CONTINUAR_PROGRAMA)
			leia(opcao)
		} 
	}

	funcao iniciar_graficos() {
		
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(LARGURA_DA_JANELA, ALTURA_DA_JANELA)
		g.definir_tamanho_texto(TAMANHO_DO_TEXTO)
		// italico, negrito, sublinhado
		g.definir_estilo_texto(falso, verdadeiro, falso)
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3387; 
 * @DOBRAMENTO-CODIGO = [20, 92, 105, 131, 143];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */