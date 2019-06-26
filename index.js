const scrabble = require('@wintron/scrabblescore');

module.exports.score = async word => {
  const points = await scrabble.score(word);
  return points * 2;
}
