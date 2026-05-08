// Inherit the parent event
event_inherited();

initTextCallback(function(){
	for (var i = 0; i < ds_grid_width(global.AllItems); i++) {
		if (global.AllItems[# i, Item.title] == "The Secret of Two Primes") {
			_claimed = true;
			break;
		}
	}
	AddItemToInventory(["The Secret of Two Primes", spr_noteHint, "Choose two primes, keep them secret, call them p and q, Their product n = p x q forms the modulus true. Compute the totient phi(n)=(p-1)*(q-1), A number that guards the key inside its den. Pick e, small but prime, coprime to phi(n), a partner sublime. Then find d, the inverse e x d mod phi(n) remainder 1"]);	
});
