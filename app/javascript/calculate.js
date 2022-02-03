function calculate (){
  const price  = document.getElementById("item-price");
  price.addEventListener("keyup", () => {
    const calculateTax = Math.floor(price.value / 10);
    const addTaxPrice  = document.getElementById("add-tax-price");
    addTaxPrice.innerHTML = `${calculateTax}`;
    const calculateProfit = Math.floor(price.value - calculateTax);
    const profit  = document.getElementById("profit");
    profit.innerHTML = `${calculateProfit}`;
  });
};

window.addEventListener('load', calculate);