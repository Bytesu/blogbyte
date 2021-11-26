const str = 'product[a-zsfdhfjksdf]sdfhjsdkfsdfhjsdkfproductsdfhjsdkf=sdfsdhjfproduct[adsf-sdfsdf]';
const regProduct = /product\[([0-9a-zA-Z]+-)*[\da-zA-Z]+\]/ig;
const regArticle = /article\[([0-9a-zA-Z]+-)*[\da-zA-Z]+\]/ig;

function split(reg, str) {
  const matches = str.match(reg)||[], replaceContent = [] ;
  let strArr = [str];
  matches.forEach(item => {
    strArr = strArr.map(strItem => strItem.split(item)).flat();
  });
  return { strArr, matches };
}

const { strArr, matches } = split(regProduct, str);
strArr.forEach((item, i) => {
  console.log(i + '-----' + item);
  if (matches[i]) console.log(matches[i] + '====');
});
// const article = split(regArticle, str);
// article.strArr.forEach((item, i) => {
//   console.log(item);
//   if (article.matches[i]) console.log(article.matches[i] + '====');
// });
// matches.map(item=>)

