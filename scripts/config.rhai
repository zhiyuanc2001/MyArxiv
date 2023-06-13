let titles_type = ["Survey", "Review", "Overview"];
let titles_model = ["Language Model", "Mixture-of", "Large Language Model", "LLM"];
let titles_method = ["Agent", "Parameter Efficient", "Multi-Agent", "Multi Agent"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio", "Shunyu Yao", "Yankai Lin", "Zhiyuan Liu", "Danqi Chen"];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "CVPR", "ECCV", "ICCV",
    // DM
    "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // IR
    "ICMR", "SIGIR",
    // ML
    "ICLR", "ICML", "NeurIPS", "NIPS",
    // NLP
    "ACL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "NAACL"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
