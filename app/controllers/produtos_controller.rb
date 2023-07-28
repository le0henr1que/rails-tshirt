class ProdutosController < ApplicationController

    def index 
       @produtos_por_nome = Produto.order :nome
    end

end
