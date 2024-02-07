
//Get transaction type
const transactType = document.querySelector("#transact-type");

// Get Transaction Form
const paymentCard = document.querySelector(".payment-card");
const transferCard = document.querySelector(".transfer-card");
const depositCard = document.querySelector(".deposit-card");

transactType.addEventListener("change", ()=>{
    //Check for Transaction Type

    switch (transactType.value) {
        case "payment":
            paymentCard.style.display = "block";
            paymentCard.nextElementSibling.style.display = "none";
        break;
        
        case "transfer":
            transferCard.previousElementSibling.style.display = "none";
            transferCard.style.display = "block";
            transferCard.nextElementSibling.style.display = "none";
        break;
        default:
            break;
    }
});