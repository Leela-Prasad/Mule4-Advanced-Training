%dw 2.0
output application/dw

import vGetOfferPrice as gop from  mymodules::CustomFunctions
import dw::core::Strings


/*fun getOfferPrice(price, discountPercentage) = do {
	var p1 = (100 - discountPercentage)/100
	---
	price * p1
}*/

//getOfferPrice vGetOfferPrice

fun formatData(inputData, myFunction:(String) -> String) = myFunction(inputData)

fun chain(myinput, myfunction) = myfunction(myinput)
---

//"Leela Prasad" chain lower
{one: "One", two: "Twoed"} chain (obj) -> obj.one ++ " " ++ obj.two chain upper

//[1, 6, 5, 2, 3, 8] filter ((item, index) -> mod(item, 2) != 0) orderBy $
//formatData("Leela Prasad", Strings::reverse)

/* product @(pid: payload.productId): {
	
	productName: payload.name,
	offer: {
		discountPercentage: payload.offer.discountPercentage,
		offerValidUntil: payload.offer.offerValidUntil,
		offerPrice: gop(payload.originalPrice, payload.offer.discountPercentage)
	},
	image1: payload.images[0]
} */