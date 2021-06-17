module.exports = {
    addToWhatsApp: function(json, success, error) {
        cordova.exec(
			success,
			error,
            'WhatsAppStickers',
            'addToWhatsApp',
            [json]
        ); 
    }
};