window.addEventListener('load', () => {
const priceInput = document.getElementById("item-price");
priceInput.addEventListener("input", () => {
const saleCommission = document.getElementById("add-tax-price");
const saleProfit = document.getElementById("profit");
const inputValue = priceInput.value;
const addTaxDom = document.getElementById("add-tax-price");
addTaxDom.innerHTML = Math.floor(priceInput.value * 0.1 );
const addProfitDom = document.getElementById("profit");
addProfitDom.innerHTML = Math.floor(priceInput.value - Math.floor(priceInput.value * 0.1 ))

})
});