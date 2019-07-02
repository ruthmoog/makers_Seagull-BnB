// describe('My first test', function() {
//   it('Does not do much', function() {
//     expect(true).to.equal(true);
//   });
// });

describe('Seagull BnB', function() {
  it('visits seagull bnb', function() {
    cy.visit('http://localhost:8000/')
  });
  it('welcomes users', function() {
    cy.visit('http://localhost:8000/')
    cy.contains('Hello World!')
  });
});