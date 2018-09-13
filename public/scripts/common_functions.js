function rolld4() {
    return Math.ceil(Math.random() * 4);
}

function rolld6() {
    return Math.ceil(Math.random() * 6);
}

function rolld8() {
    return Math.ceil(Math.random() * 8);
}

function rolld10() {
    return Math.ceil(Math.random() * 10);
}

function rolld12() {
    return Math.ceil(Math.random() * 12);
}

function rolld20() {
    return Math.ceil(Math.random() * 20);
}

function rolld100() {
    return Math.ceil(Math.random() * 100);
}

function rollStat() {
    let stats = [];
    stats.push(rolld6());
    stats.push(rolld6());
    stats.push(rolld6());
    stats.push(rolld6());
    stats.sort();
    return stats.slice(1).reduce(function (total, num) {
        return total + num;
    });
}

function roll5dStat() {
    let stats = [];
    stats.push(rolld6());
    stats.push(rolld6());
    stats.push(rolld6());
    stats.push(rolld6());
    stats.push(rolld6());
    stats.sort();
    return stats.slice(2).reduce(function (total, num) {
        return total + num;
    });
}

function rollBeefyStat() {
    let stats = [];
    stats.push(rolld6());
    stats.push(rolld6());
    stats.push(rolld6());
    stats.push(rolld6());
    stats.push(rolld6());
    stats.sort();
    return stats.slice(1).reduce(function (total, num) {
        return total + num;
    });
}

function rollAndPlaceStat(selector) {
    $('#' + selector + '-score').val(rollStat());
}

function rollAndPlaceAllStats() {
    rollAndPlaceStat('strength');
    rollAndPlaceStat('dexterity');
    rollAndPlaceStat('constitution');
    rollAndPlaceStat('intelligence');
    rollAndPlaceStat('wisdom');
    rollAndPlaceStat('charisma');
}

function rollAndPlace5dStat(selector) {
    $('#' + selector + '-score').val(roll5dStat());
}

function rollAndPlaceAll5dStats() {
    rollAndPlace5dStat('strength');
    rollAndPlace5dStat('dexterity');
    rollAndPlace5dStat('constitution');
    rollAndPlace5dStat('intelligence');
    rollAndPlace5dStat('wisdom');
    rollAndPlace5dStat('charisma');
}

function rollAndPlaceBeefyStat(selector) {
    $('#' + selector + '-score').val(rollBeefyStat());
}

function rollAndPlaceAllBeefyStats() {
    rollAndPlaceBeefyStat('strength');
    rollAndPlaceBeefyStat('dexterity');
    rollAndPlaceBeefyStat('constitution');
    rollAndPlaceBeefyStat('intelligence');
    rollAndPlaceBeefyStat('wisdom');
    rollAndPlaceBeefyStat('charisma');
}

function updateStatsByRace() {
    let race = document.getElementById('race').value;
    if (race !== undefined) {
        let str = document.getElementById('strength-score');
        let dex = document.getElementById('dexterity-score');
        let con = document.getElementById('constitution-score');
        let int = document.getElementById('intelligence-score');
        let cha = document.getElementById('charisma-score');

        switch (race) {
            case 'Dwarf':
                if (con.value !== '') con.value = parseInt(con.value) + 2;
                if (cha.value !== '') cha.value -= 2;
                break;
            case 'Elf':
                if (dex.value !== '') dex.value = parseInt(dex.value) + 2;
                if (con.value !== '') con.value -= 2;
                break;
            case 'Gnome':
                if (str.value !== '') str.value -= 2;
                if (con.value !== '') con.value = parseInt(con.value) + 2;
                break;
            case 'Half-Orc':
                if (str.value !== '') str.value = parseInt(str.value) + 2;
                if (int.value !== '') int.value -= 2;
                if (cha.value !== '') cha.value -= 2;
                break;
            case 'Halfling':
                if (str.value !== '') str.value -= 2;
                if (dex.value !== '') dex.value = parseInt(dex.value) + 2;
                break;
            default:
                break;
        }
    }
}