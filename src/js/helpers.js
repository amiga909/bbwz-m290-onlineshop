export const csvToArray = (text) => {
  text = text.replace(/;/g, ",");
  let p = "",
    row = [""],
    ret = [row],
    i = 0,
    r = 0,
    s = !0,
    l;
  for (l of text) {
    if ('"' === l) {
      if (s && l === p) {
        row[i] += l;
      }
      s = !s;
    } else if ("," === l && s) {
      l = row[++i] = "";
    } else if ("\n" === l && s) {
      if ("\r" === p) {
        row[i] = row[i].slice(0, -1);
      }
      row = ret[++r] = [(l = "")];
      i = 0;
    } else {
      row[i] += l;
    }
    p = l;
  }
  return ret;
};

export const uniq = (a) => {
  return a.sort().filter(function (item, pos, ary) {
    return !pos || item != ary[pos - 1];
  });
};

export const getSearchParameters = () => {
  let prmstr = window.location.search.substr(1);
  return prmstr != null && prmstr != "" ? transformToAssocArray(prmstr) : {};
};

function transformToAssocArray(prmstr) {
  let params = {};
  let prmarr = prmstr.split("&");
  for (let i = 0; i < prmarr.length; i++) {
    let tmparr = prmarr[i].split("=");
    params[tmparr[0]] = tmparr[1];
  }
  return params;
}
