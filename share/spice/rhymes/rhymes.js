function ddg_spice_rhymes ( api_result ) {
    "use strict";

    var query = DDG.get_query()
                .replace(/^(what|rhymes?( with| for)?) |\?/gi, "");

    if (!api_result.length) {
        return;
    }

	var words = [], count=0;

	for(var i=0, l = api_result.length; i<l; i++) {
        var word = api_result[i];

        if (word.score === 300 && !word.flags.match(/a/)) {
            words.push(word);
			console.log(word.word);
			if (++count > 15)
				break;
        }
	}

    Spice.add({
		data       : { words: words },
		id         : "rhymes",
        name       : "Rhymes",
        sourceUrl  : 'http://rhymebrain.com/en/What_rhymes_with_' +
                       encodeURIComponent(query),
        sourceName : 'RhymeBrain',
        templates  : {
            item: Spice.rhymes.item,
            detail: Spice.rhymes.item
        }
    });
}