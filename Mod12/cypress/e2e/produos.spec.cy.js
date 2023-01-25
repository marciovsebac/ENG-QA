/// <reference types="cypress" />

describe('Página de produtos', () => {
    beforeEach(() => {
        cy.visit('produtos/page/7')
    });
    it('Deve adicionar ao carrinho', () => {
        cy.addProdutos('XL', 'Black', 3)
        cy.addProdutos('XL', 'Black', 3)
        cy.addProdutos('XL', 'Black', 3)
    });

});
