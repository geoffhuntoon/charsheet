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