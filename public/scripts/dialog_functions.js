function _raceDialog() {
    let race = document.getElementById('race').selectedItemLabel;
    $.ajax({
        url: '/includes/create/race_dialog.html?raceName=' + race,
        success: function (data) {
            $('#general-dialog').html(data);
            document.getElementById('race-tabs').selected = 'general';
            document.getElementById('race-pages').selected = 'general';

            $.ajax({
                url: '/races/' + race,
                success: function (body) {
                    let raceInfo = body[0][0];
                    let raceFeats = body[1];
                    $('#race-title').text(raceInfo['name']);
                    Object.keys(raceInfo).forEach(function (key) {
                        let div = document.getElementsByClassName(key);
                        if (div[0] !== undefined) {
                            div[0].innerHTML = '<paper-dialog-scrollable dialog-element="race-dialog">' +
                                raceInfo[key] + '</paper-dialog-scrollable>';
                        }
                    });
                    let feats = '<paper-dialog-scrollable dialog-element="race-dialog">';
                    raceFeats.forEach(function (feat) {
                        feats += feat['feat'] + ': ' + feat['description'] + '<br/><br/><hr/><br/>';
                    });
                    feats += '</paper-dialog-scrollable>';
                    $('.racial_traits').html(feats);
                    document.getElementById('race-dialog').open();
                }
            });
        }
    });
}

function _classDialog() {
    let charClass = document.getElementById('char-class').selectedItemLabel;
    $.ajax({
        url: '/includes/create/class_dialog.html?className=' + charClass,
        success: function (data) {
            $('#general-dialog').html(data);

            $.ajax({
                url: '/classes/' + charClass,
                success: function (body) {
                    let className = body[0][0];
                    let classStats = body[1];
                    let classFeats = body[2];

                    document.getElementById('class-title').innerText = className['name'];
                    Object.keys(className).forEach(function (key) {
                        let div = document.getElementsByClassName(key);
                        if (div[0] !== undefined) {
                            div[0].innerHTML = '<paper-dialog-scrollable dialog-element="class-dialog">' +
                                className[key] + '</paper-dialog-scrollable>';
                        }
                    });

                    let statsTable = '<paper-dialog-scrollable dialog-element="class-dialog"><table class="stat-table">' +
                        '<tr><th>Level</th><th>Base Attack Bonus</th><th>BAB 2</th><th>BAB 3</th><th>BAB 4</th>' +
                        '<th>Fortitude Save</th><th>Reflex Save</th><th>Will Save</th>' +
                        '<th>Special Abilities/Feats</th></tr>';
                    classStats.forEach(function (stat) {
                        statsTable += '<tr><td>' + stat['level'] + '</td><td>' + stat['base_attack_bonus_1'] +
                            '</td><td>' + stat['base_attack_bonus_2'] + '</td><td>' + stat['base_attack_bonus_3'] +
                            '</td><td>' + stat['base_attack_bonus_4'] + '</td><td>' + stat['fortitude_save'] +
                            '</td><td>' + stat['reflex_save'] + '</td><td>' + stat['will_save'] +
                            '</td><td>' + stat['special'] + '</td></tr>'
                    });
                    statsTable += '</table></paper-dialog-scrollable>';

                    let feats = '<paper-dialog-scrollable dialog-element="class-dialog">';
                    classFeats.forEach(function (feat) {
                        feats += feat['name'] + '<br/>' + feat['description'] + '<br/><br/><hr/><br/>';
                    });
                    feats += '</paper-dialog-scrollable>';

                    $('.class_stats').html(statsTable);
                    $('.class_features').html(feats);

                    if (className['name'] === 'Bard') {
                        let tab = document.createElement('paper-tab');
                        tab.setAttribute('name', 'bardic_knowledge');
                        tab.innerText = 'Knowledge';
                        $(tab).insertAfter('[name="class_features"]');

                        let knowledgeTable = '<paper-dialog-scrollable dialog-element="class-dialog">' +
                            '<table class="stat-table"><tr><th>Difficulty Class</th><th>Type of Knowledge</th>' +
                            '<th>Examples</th></tr>';
                        let bardicKnowledge = body[3];
                        bardicKnowledge.forEach(function (item) {
                            knowledgeTable += '<tr><td>' + item['difficulty_class'] + '</td><td>' +
                                item['type_of_knowledge'] + '</td><td>' + item['examples'] + '</td></tr>';
                        });
                        knowledgeTable += '</table></paper-dialog-scrollable>';

                        let div = document.createElement('div');
                        div.className = 'bardic_knowledge';
                        div.innerHTML = knowledgeTable;
                        $(div).insertAfter('.class_features');
                    }

                    document.getElementById('class-tabs').selected = 'general';
                    document.getElementById('class-pages').selected = 'general';
                    document.getElementById('class-dialog').open();
                }
            });
        }
    });
}

function _alignmentDialog() {
    $.ajax({
        url: '/includes/create/alignment_dialog.html',
        success: function (data) {
            $('#general-dialog').html(data);
            document.getElementById('alignment-tabs').selected = 'general';
            document.getElementById('alignment-pages').selected = 'general';

            $.ajax({
                url: '/alignment',
                success: function (body) {
                    let alignment = body[0];
                    let examples = body[1];
                    alignment.forEach(function (item) {
                        let section = item['section'].toLowerCase().replace(/ /g, '_').replace('.', '');
                        let div = document.getElementsByClassName(section);
                        let descriptionDiv = document.getElementsByClassName('descriptions');
                        if (div[0] !== undefined) {
                            div[0].innerHTML = item['description'];
                        }
                        else {
                            descriptionDiv[0].innerHTML += item['section'] + ': <br/>' +
                                item['description'] + '<br/><br/><hr/><br/>';
                        }
                    });

                    let div = document.getElementsByClassName('alignment_examples');
                    let lg = '', ln = '', le = '', ng = '', tn = '', ne = '', cg = '', cn = '', ce = '';
                    examples.forEach(function (item) {
                        let alignment = item['alignment'], example = item['example'];
                        if (alignment === 'Lawful Good') lg += example + '<br/>';
                        else if (alignment === 'Lawful Neutral') ln += example + '<br/>';
                        else if (alignment === 'Lawful Evil') le += example + '<br/>';
                        else if (alignment === 'Neutral Good') ng += example + '<br/>';
                        else if (alignment === 'Neutral') tn += example + '<br/>';
                        else if (alignment === 'Neutral Evil') ne += example + '<br/>';
                        else if (alignment === 'Chaotic Good') cg += example + '<br/>';
                        else if (alignment === 'Chaotic Neutral') cn += example + '<br/>';
                        else if (alignment === 'Chaotic Evil') ce += example + '<br/>';
                    });

                    let lawTable = '<table>' +
                        '<tr><th>Lawful Good</th><th>Lawful Neutral</th><th>Lawful Evil</th></tr>' +
                        '<tr><td>' + lg + '</td><td>' + ln + '</td><td>' + le + '</td></tr></table>';

                    let neutralTable = '<table>' +
                        '<tr><th>Neutral Good</th><th>Neutral</th><th>Neutral Evil</th></tr>' +
                        '<tr><td>' + ng + '</td><td>' + tn + '</td><td>' + ne + '</td></tr></table>';

                    let chaosTable = '<table>' +
                        '<tr><th>Chaotic Good</th><th>Chaotic Neutral</th><th>Chaotic Evil</th></tr>' +
                        '<tr><td>' + cg + '</td><td>' + cn + '</td><td>' + ce + '</td></tr></table>';

                    div[0].innerHTML = lawTable + '<br/><br/>' + neutralTable + '<br/><br/>' + chaosTable;
                    document.getElementById('alignment-dialog').open();
                }
            });
        }
    });
}