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

function rollStats() {
    let stats = [];
    for(let i = 0; i < 6; i++) {
        let first = rolld6();
        let second = rolld6();
        let third = rolld6();
        let fourth = rolld6();
        let min = Math.min(first, second, third, fourth);
        stats.push(first + second + third + fourth - min);
    }
    return stats;
}

function rollBeefyStats() {
    let stats = [];
    for (let i = 0; i < 7; i++) {
        let first = rolld6();
        let second = rolld6();
        let third = rolld6();
        let fourth = rolld6();
        let fifth = rolld6();
        let min = Math.min(first, second, third, fourth, fifth);
        stats.push(first + second + third + fourth + fifth - min);
    }
    return stats;
}