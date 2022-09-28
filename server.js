var express = require("express")

const app = express()

app.use(express.json())
app.use(express.urlencoded({
    extended: true
 }));

 app.use(express.static(__dirname + '/public'));


app.get("/",(req,res)=>{
    res.set({
        "Allow-access-Allow-Origin": '*'
    })
    return res.redirect('../commande/page_produit.html');

});

var lookup = require('binlookup')();
app.post('/commande/api', async (req, res) => {

	console.log("Request", req.body);
	try {
	const lookup_data = await lookup(req.body.bin);
	console.log("LOOKUP DATA :: ", lookup_data)
	res.json(lookup_data);
} catch (error) {
	console.log("ERROR ", error)
}
});




app.listen(5000,function(){
    console.log("Listening on PORT 5000");

});

