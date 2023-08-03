class ProdutosController < ApplicationController

    def index 
       @produtos_por_nome = Produto.order :nome
    end

    def create

        valores = params.require(:produto).permit :nome, :preco, :descricao, :quantidade

        produto = Produto.create valores
    end

end
