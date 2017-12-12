

sandbox = false
shouldStop = true

lastUserWorkInertiaLevel = {}


haveConfetti = true

appVersion = 0.17
appVersionString = ''
username = ''
cocoaBridgeIsUp = false
workInertiaActive = true
testingWorkInertia = false

workInertia = 0
if testingWorkInertia
	workInertia = 4
lastWorkInertiaTimeCheck = 0


teamListControl.visible = false
button_group.visible = false


lastMouse = 
	x:  0
	y: 0
	virgin: true
	
	
`function isRetinaDisplay() {
        if (window.matchMedia) {
            var mq = window.matchMedia("only screen and (min--moz-device-pixel-ratio: 1.3), only screen and (-o-min-device-pixel-ratio: 2.6/2), only screen and (-webkit-min-device-pixel-ratio: 1.3), only screen  and (min-device-pixel-ratio: 1.3), only screen and (min-resolution: 1.3dppx)");
            return (mq && mq.matches || (window.devicePixelRatio > 1)); 
        }
    }`
	


#array of Groups

groupHashes = ["570404", "fdbdbd", "fa6b6b", "fdaeae", "8f0303", "fc3131", "430101", "9e0101", "ff6767", "fdd6d5", "e90c08", "f93430", "010000", "ffe8e8", "d80703", "fd3d3a", "ffeded", "ff3f3c", "f74e48", "fee3e2", "fdb4b2", "3c0302", "fa1b14", "fd908d", "fe8884", "650401", "f60800", "fb9993", "f95f57", "620803", "d21005", "fa1509", "fd8a84", "b90b02", "fe8e88", "ffe7e6", "fa8c84", "540803", "c81306", "6d0a03", "fb5145", "fc382a", "feb5b0", "fe7167", "ffc9c5", "f97a6e", "9c1206", "bf1506", "560902", "fda59d", "fec8c4", "fe9288", "7e0b01", "c81100", "a91707", "fa8d81", "fb7e70", "d91b06", "fec7c1", "fc5c4a", "220400", "ffe9e7", "ff1c03", "b61c08", "f85842", "fa6552", "fca195", "fb4932", "7d1002", "2a0500", "fe381e", "ffcdc6", "e8270a", "921805", "c01f06", "1b0401", "fb6a53", "680f02", "851301", "d31d01", "0e0200", "fbafa1", "781604", "fee9e5", "fb7861", "fecfc7", "941802", "921701", "6d1101", "0b0200", "210701", "040100", "7b1804", "c32505", "480d01", "560f01", "fd411b", "ee2901", "ff9f8c", "fdd9d1", "aa2406", "fa7c60", "3e0d02", "fda794", "fd7c60", "8e1b01", "420c00", "f32d00", "2b0a02", "4f1203", "080200", "fc9f88", "651602", "fed2c7", "ffdfd7", "fe8263", "aa2200", "d23409", "fff6f3", "f85224", "280901", "fb5224", "febca9", "d63002", "ffb7a3", "430f00", "f76336", "fa9b7e", "fb906f", "411002", "fc835f", "d23303", "fea185", "fe5a28", "ff9676", "f88862", "8b2705", "c53606", "fb8e6a", "fed4c6", "fb5118", "f43f02", "832101", "ff855c", "fff8f5", "f98c64", "f85f28", "d63d05", "fa561a", "902802", "fd6b36", "170600", "ffae91", "e04609", "411402", "3c1202", "fb936a", "fee6dd", "fd9369", "942b01", "ffd4c2", "ff6a2f", "f88858", "f98d5f", "fff8f5", "fcae8c", "fff3ee", "932e02", "fd9162", "ffcbb5", "ff783e", "451803", "fccab3", "fdceb8", "c34105", "020100", "fff5f1", "fff8f5", "fe6f2d", "ff8850", "0d0501", "fee7dc", "fbaf88", "3b1502", "fa5c0d", "772902", "fffcfb", "842c01", "ff5e0e", "a13d07", "0c0400", "cc4b06", "feede4", "290f01", "260e01", "fec4a5", "af3e01", "481900", "f88e51", "f88a4a", "582203", "6d2a03", "e75805", "f95e04", "ffebdf", "ffddca", "140700", "000000", "552203", "923b05", "fdc8a7", "fa7420", "fc8b44", "fd8840", "fe7622", "c34b00", "fbc6a2", "351602", "fddec9", "863803", "fdcaa8", "fc9b5b", "c34f02", "fe7d27", "ffb787", "0b0500", "4f2303", "e36307", "fba160", "a74803", "fb6c06", "fecba6", "bb4e01", "ff8b39", "0c0601", "fee9d9", "fbb27b", "fffdfb", "fdcba5", "4b2101", "feb883", "fff5ed", "4d2100", "d46409", "532703", "a14b05", "fbaf70", "492201", "cb5d03", "fd801a", "4d2300", "ffd4b0", "fbcca3", "d16508", "fdd6b5", "b35605", "fee8d6", "feead8", "fed8b7", "feb87a", "ffcda2", "ce6809", "190d01", "482402", "4f2702", "feebda", "fdb571", "fed1a6", "fe800a", "7e3d00", "bd6308", "fab36c", "3b1f02", "1f1001", "ec7805", "ab5703", "773c01", "201000", "592d00", "0d0701", "fde6ce", "693803", "fee2c5", "d77104", "7e4202", "fffcf9", "fffcfa", "8f4a00", "c46c08", "f79320", "bb6706", "653703", "fba747", "fffdfa", "a85b02", "fffaf4", "c56900", "f69927", "6c3d04", "070400", "905104", "fef3e4", "a45b02", "8d4e01", "feb357", "ffdfb7", "f28e0a", "f8a73d", "fef3e4", "fee9cf", "fb9e26", "6d3f02", "fdbc67", "fea42d", "1c1000", "fac984", "fcdfb5", "0b0600", "e68806", "844e03", "feebd0", "a36002", "fea62a", "ffd08f", "fef2e1", "040300", "623c03", "fbb650", "fef0db", "f89604", "fec571", "ffeaca", "ffe7c3", "704705", "f9b74d", "fde2b7", "f99c07", "fddaa2", "b37003", "fdbd55", "4c2f00", "825000", "f9c66e", "412a02", "020100", "fbc76d", "fff9f0", "eb9604", "fed99a", "fff9f0", "c97f00", "e09509", "fad082", "9f6905", "ec9b06", "4b3102", "fdd893", "fdc968", "ffe6b8", "ffb732", "916306", "f8be48", "f8ad18", "916204", "ae7504", "fba904", "fdcc6a", "a16b01", "ffd683", "f9d17a", "b57e07", "facd6a", "b77e05", "fbb624", "eda304", "feda8c", "8d6101", "ffb30e", "362602", "9a6d06", "a27305", "715003", "fcca56", "fcbb23", "fff7e6", "bd8501", "5c4100", "f6bb27", "d59b08", "241a01", "f9b509", "2a1e01", "392901", "090700", "3d2c00", "ffcf57", "fceaba", "171101", "926c05", "fde5a3", "fcd364", "f1b104", "fff3d3", "ffedbc", "7a5900", "fefbef", "c19207", "fffcf4", "fdecb9", "201801", "241b01", "feeebc", "5d4600", "ffe9a7", "fbe49a", "fbe18c", "fffdf7", "544102", "fef0c5", "453501", "fffbee", "e5b001", "fffaeb", "fbe8a3", "f3c109", "f9d44b", "a38004", "fbd23e", "302601", "c39902", "fec909", "654f00", "fcf0c1", "fbe99e", "675303", "fffcf2", "997b03", "191400", "fdcc0b", "977901", "e2b400", "fefae7", "d7b108", "4d3f02", "a18404", "665402", "977c02", "917601", "fed108", "302700", "f9e26e", "f6d00f", "eac407", "fbde52", "6e5c02", "0b0900", "c9a802", "fff3b8", "ffdc2b", "fcf2b8", "5e5103", "f9dc37", "bfa305", "fce669", "fcdb21", "ba9e02", "ab9101", "151200", "f6dc31", "d7bb08", "f8db1f", "fffdf0", "fce866", "fbdd18", "c8ad02", "c6ab01", "141200", "fefceb", "363002", "f9e33a", "fdf6bc", "7f7103", "554b01", "fde63b", "fee529", "ffef78", "c5b208", "ead308", "fcf195", "fefce3", "fefad9", "fef8c1", "fffef9", "feee5d", "fff6a0", "dac909", "fdf7bd", "fbf078", "fdf6a9", "595102", "fdf594", "d8c602", "f2de01", "b9a900", "f9ef6c", "f8eb3c", "f8e919", "1a1801", "faec1c", "d9cb03", "fdec0b", "fef680", "8c8300", "fdfbce", "f9f053", "faf259", "413e02", "faee05", "fdf676", "8a8301", "0b0a00", "6a6400", "faf792", "2f2e02", "504d02", "b5af05", "fffee9", "fefbb1", "fdf85c", "030300", "fffff3", "c8c508", "3d3c02", "020200", "fbf96f", "a7a503", "4f4d01", "7d7b01", "efeb01", "d1cd00", "dada09", "121201", "484802", "fafa3e", "040400", "686802", "fcfc05", "ffffaf", "ecec00", "fefeeb", "9a9c06", "f7fa4f", "b8bb05", "333401", "2c2d01", "fcfe8c", "fafe21", "212200", "e3ea0a", "a3a906", "f5fa5f", "010100", "fdfedc", "f6fc3e", "a0a502", "5c5f00", "fbff90", "eff84d", "f5fb8d", "f7fc98", "d1dc06", "808603", "161700", "232500", "adb601", "494d00", "fbfdd9", "6d7504", "242701", "4a4f02", "f2fc64", "fefff6", "cedd02", "f5fe70", "6c7300", "cdde09", "ecf95b", "fefff5", "e6f91a", "f5fd9d", "fdffe6", "f5fe95", "859101", "faffbf", "758105", "f9fdd2", "4f5703", "424902", "def605", "fbfed8", "f5fea6", "fbffda", "323800", "f8fdd2", "f3fcae", "272c01", "e7fb50", "8a9c03", "fbffe0", "e8fd47", "6c7a01", "faffd5", "e6f969", "e9fa77", "596603", "e0fa38", "d1f005", "f2fea4", "f7fec9", "f1fe98", "ddff03", "546204", "1d2201", "f4fdc0", "f8fed9", "9cb604", "f7fecc", "defd31", "d8fd01", "eeff8d", "404c03", "def95a", "0c0e00", "88a304", "cdf505", "1e2401", "dafd2a", "e8fe7b", "f9ffde", "687e05", "232a02", "e8fc8f", "364202", "bfe805", "edfea1", "141800", "bee801", "84a100", "779306", "2e3902", "8fb105", "060700", "fefffc", "ebfea2", "516501", "d7fe3a", "e3ff74", "f5fdd6", "8aaf06", "2a3502", "475b02", "cefb2b", "4b6001", "f1fec2", "c8fe04", "deff65", "d2f854", "c9f831", "384902", "d1fa47", "303e01", "7da302", "607d01", "5b7601", "84ac00", "cbf748", "d8fa71", "374902", "e0fc8c", "fcfff3", "709502", "2a3701", "c2fe0f", "edffb6", "f2fdd2", "759d06", "dbfb81", "a3dd06", "c4fb2d", "2b3a01", "9cd402", "ddfe81", "314300", "c4f741", "effdcc", "dafb86", "e4fda5", "608503", "527102", "d6fe73", "f9ffea", "ddff87", "aaee0a", "283902", "96d307", "84ba05", "425d02", "1d2901", "e1fe9d", "e2ff9f", "a9f100", "283a02", "0a0f01", "557a04", "a3ec06", "dffda0", "70a202", "375001", "344c00", "364f00", "3c5804", "f2fedb", "e3fdaf", "f3fedd", "99e305", "659602", "304701", "76b101", "abff02", "c0f857", "74af06", "eafdc5", "a4f806", "bcfb46", "bbfc43", "4b7301", "b5fe2e", "283e00", "293f03", "527f05", "d2fb89", "7dc205", "84ce04", "558602", "b4fd35", "090e00", "0c1200", "e5fcc0", "5c9205", "090f00", "5c9304", "f0feda", "dcfea5", "152100", "5e9801", "1a2b00", "2a4503", "e0fcb5", "e7fdc5", "befb63", "99fa08", "9bfb0c", "2e4c01", "dfffae", "2b4700", "d5fb9f", "65a906", "a2f828", "a8fa36", "fbfff6", "f5ffe7", "416f01", "daffa8", "a5ff27", "c5fa81", "162601", "adf948", "f2fee1", "315502", "0b1400", "90fc03", "4e8901", "62ae00", "b7f966", "3c6b04", "befb73", "2e5102", "fdfffc", "8ffb0c", "fcfff9", "bafe66", "9bff22", "050800", "defdbc", "aefa58", "98f928", "e2fec2", "9efc34", "67c002", "76dd01", "60b300", "98f632", "488705", "e1fdc4", "e8fed1", "fbfff8", "b9fd71", "2f5a01", "d5ffa9", "acff53", "3d7605", "ccfb9c", "66c606", "010200", "e6fece", "efffdf", "7af102", "a1fe44", "e9ffd4", "254a03", "78f009", "bbfb7f", "000000", "75ee05", "274f01", "ddfebf", "285100", "ceffa0", "6ee109", "5ab907", "84f81f", "448e04", "387402", "367102", "f6ffee", "102200", "84ff18", "dcfcc1", "a4f95e", "9bfa4e", "57bb05", "60cf04", "152e01", "efffe2", "d1ffab", "5bcb00", "f9fff4", "e5fdd2", "bafb88", "0b1901", "6df505", "48a202", "66e802", "48a601", "46a100", "51b808", "b0fa7c", "000100", "befc91", "317102", "66f004", "72fd0f", "78fe18", "050c00", "439e07", "214f03", "b4fb85", "a5fb6b", "132f01", "b2fd80", "3a8e01", "398f01", "ebffde", "419e07", "296504", "78f828", "2b6b03", "f1ffe8", "58e003", "a6fe70", "82fe35", "102900", "358606", "5ef009", "69f816", "55de06", "5ef905", "55e203", "3b9d02", "7afe2e", "1d4f00", "194203", "41ae06", "1c4b02", "2e7d03", "123101", "8cfc50", "123401", "a2fe70", "b4ff8b", "113002", "5ff613", "4cd607", "ebfee1", "d1febb", "a0fd72", "081700", "edffe5", "236900", "43c108", "d5fdc3", "102f01", "4be106", "fefffd", "40c503", "40c502", "98fe69", "38b000", "6ff734", "48dc08", "123802", "3dc005", "4df505", "216c02", "0f3201", "d4ffc1", "1c5c00", "164603", "e6fedc", "64f829", "3ece05", "0e3001", "0a2201", "85fd55", "0e3200", "f2ffed", "80f854", "d5fdc6", "3ed607", "2a9404", "8ffc68", "020700", "0c2b00", "6efe3a", "8aff5f", "a4fa87", "0c2b02", "5ef82a", "1f7303", "90fc6c", "279402", "cffebf", "207d01", "114300", "31b808", "41f60a", "269405", "59f928", "93fc72", "4ffc1b", "0a2a00", "8cfe6a", "62ff32", "b1fb9d", "020800", "34d607", "208603", "36e705", "57fc29", "124e01", "020a00", "77ff52", "b0fb9d", "64f83f", "208e04", "229b04", "1d8503", "ccfebf", "219d02", "010300", "115300", "ebfee7", "0a3102", "99fb83", "0a3201", "69fb48", "2ad703", "23b702", "9ffe8a", "76ff57", "e3fedd", "3cf717", "79fa60", "bbfdae", "28dc04", "0a3601", "49fd25", "eaffe5", "168200", "5bf73f", "33f611", "1da705", "9efc8e", "3efa1d", "c7febd", "b9feac", "062700", "3aff17", "1ca607", "28f509", "1ba905", "81fb6e", "dbfed6", "106c02", "9efe8f", "fefffe", "128500", "093a02", "8ffa81", "67fa54", "5afa44", "031700", "139102", "72fd60", "18c601", "1ae000", "68f858", "90fb84", "5bf949", "b8fdb0", "0e7202", "a5fd9b", "3afd25", "deffda", "e6ffe3", "063502", "052a02", "f5fff4", "65fb57", "17e005", "eeffec", "6efd61", "daffd7", "042b00", "063a02", "62f958", "e2fee0", "acfda6", "12ce04", "c1febd", "57fd4b", "dbffd8", "032700", "10b307", "b2fcae", "11d407", "1af90e", "065a02", "0feb04", "a0fe9b", "067101", "0cfa00", "0b9a06", "0a9405", "39f932", "011401", "9dfd9a", "5dfc58", "0aeb02", "06a101", "f3fff3", "1ef51a", "0bc907", "8dfb8b", "8bfc89", "06ab03", "77fd74", "35fd32", "bcffbb", "36ff33", "c8fdc8", "07bc07", "023a02", "06e306", "b2fdb2", "001f00", "018001", "01e501", "f1fff1", "49f74c", "024404", "047d06", "048f06", "000e01", "014302", "02f006", "67fe69", "008a02", "40f746", "b6fcb8", "06ba0c", "5afb5f", "7efc82", "001901", "013c03", "01e009", "baffbd", "cafdcd", "000500", "7bfb82", "049a0b", "013804", "014304", "019309", "0afe16", "00fa0d", "27f635", "79fa81", "52fa5d", "000b01", "025007", "13fb22", "dbffdd", "001301", "f6fff7", "046b0d", "adfcb3", "41f950", "95fc9d", "bcfec2", "04ee17", "79fe84", "14fe28", "11ff25", "aafbb2", "26f73b", "d9fedd", "06e61c", "46fb58", "04f71c", "98fea2", "01b012", "02ff1c", "85fa92", "54f967", "acfcb5", "affdb8", "014309", "03ae17", "4afd5e", "000701", "003306", "81fa91", "059619", "3ff958", "05cc20", "69fc7d", "d4feda", "8ffe9e", "fcfffc", "003207", "3cf758", "06b020", "8cfb9d", "22f942", "05fa2a", "026510", "07fc2c", "85fe97", "b3ffbf", "08c929", "058c1c", "036714", "7afc90", "b6fec2", "015710", "b1febe", "c8ffd1", "18ff3f", "011906", "012508", "05a422", "012307", "7bfc93", "015511", "017d18", "01a21e", "a4ffb4", "07a226", "035113", "05a926", "04ad26", "eefff1", "0dfb3d", "72fe8e", "70fe8d", "002708", "eefef2", "83fb9d", "e6feeb", "038620", "01380d", "f2fff5", "02d02f", "4efe74", "85ffa0", "e7feed", "ddfee5", "e8feed", "024912", "7afc99", "013b0e", "5ffd84", "001505", "63ff87", "034213", "000c03", "024613", "c8fed5", "64fc8a", "03bf32", "018923", "7afe9b", "00ce33", "c2fcd2", "49f878", "a1fcb9", "049c2c", "3bfb6e", "f2fff5", "016e1e", "53fe81", "005a18", "d2fdde", "5df989", "06bd3a", "024a16", "70fc97", "98fdb5", "01691e", "6efe97", "45ff7a", "41f778", "047a28", "a2fcbd", "46fa7c", "8afdac", "028329", "000903", "01b236", "53ff86", "046824", "000a04", "28f86a", "3dfa79", "039f35", "defee8", "1ffd65", "017525", "00ed4b", "022e11", "09f558", "024c1b", "f1fff6", "000602", "92fdb6", "001708", "92feb6", "00e94e", "09cf4e", "30f776", "38f97c", "023f17", "026324", "014118", "0afd5f", "32fe79", "9cffbf", "67f99c", "d3fde2", "06ce50", "6efba2", "05eb59", "f6fff9", "84feb1", "006124", "0bff65", "01230e", "6dfaa3", "024b1e", "04913a", "78fcab", "c4feda", "3ffd88", "26fe79", "c7ffdd", "08c855", "c9fdde", "33f982", "048b3a", "01461d", "04f866", "017630", "018a38", "17ff74", "70f9a9", "023d1b", "c7fddd", "7afcb0", "02672c", "03d35a", "001d0c", "01ee64", "3bff8d", "36f789", "000a05", "5dfaa1", "37fa8b", "aefdd0", "4afc97", "daffea", "016e30", "00cd59", "e3feef", "1df77f", "012511", "048c41", "04d261", "09fb76", "015125", "0dfe79", "c1ffdd", "3cf793", "02351a", "0ff87b", "049045", "024d25", "f8fffb", "02aa50", "2afe8d", "004b23", "c3fcdf", "046633", "6bfab0", "04ac56", "b0fdd5", "014e26", "02bd5c", "18fe87", "35ff96", "05703a", "022f18", "035b2f", "59fbaa", "ccfee5", "27fc92", "02e674", "01d96d", "b1ffd8", "000603", "41f8a0", "03532c", "d9feec", "04b560", "bffedf", "d3ffe9", "2bfe98", "27ff96", "47f7a5", "8cfbc7", "012b17", "19f990", "9ffdd1", "00190e", "39fda2", "52feae", "008547", "069555", "08cf75", "012515", "05b163", "c8fee6", "44fca9", "adfeda", "017943", "00d977", "1cf697", "1ef799", "8bfbcb", "80fcc6", "011c10", "c9fee7", "015530", "eefff8", "008048", "08cc7b", "a5fcd8", "cefdea", "c5fee6", "03a662", "4cfcb3", "02c775", "adffdd", "3bffad", "022a1a", "eafef6", "01160d", "00130c", "22faa4", "03cb7b", "03f997", "6ffec5", "002315", "0aea94", "069960", "65fac1", "03633e", "4bfbb8", "37fcb1", "6efec7", "5efec1", "26ffac", "49f7b8", "5ef9c0", "41f9b6", "d0feed", "7bfccd", "9dfeda", "014b30", "004b30", "90ffd6", "60f8c3", "069965", "28f8b0", "f2fffa", "2bfbb2", "001910", "d9fff2", "01d188", "00e394", "c1fce9", "a2fcde", "048057", "64fbc9", "57fcc5", "026644", "9afedd", "018659", "002a1c", "adfce3", "035b40", "5cfac8", "37fabc", "affde4", "029c6b", "92fedc", "01835a", "bfffeb", "b1fce5", "73fad1", "8dfbda", "06d899", "05e5a2", "04f5ac", "02aa77", "019c6d", "aeffe7", "d9fdf3", "09f0af", "affde6", "4efaca", "02694c", "c2feed", "0afdb8", "000605", "c7ffef", "033e2e", "64f9d2", "c9fdef", "024130", "014936", "74fdd8", "d6fff4", "b6ffeb", "006147", "058364", "024534", "06c495", "06ebb2", "025f48", "1ffcc4", "016b51", "004a38", "008765", "03513f", "fdffff", "03644d", "00120e", "83fce0", "028667", "3afdd0", "01e5b0", "00503e", "046c55", "023d30", "8afbe3", "befdf0", "6dfcdd", "03d2a5", "2cfdd0", "00382c", "22ffcf", "06977a", "b6fcee", "affded", "000907", "000101", "dcfef8", "02d7ac", "018b6f", "00d5aa", "068f76", "19f7ce", "05a184", "037d67", "027963", "35fcd8", "32fdd8", "01957a", "005b4b", "068973", "05977f", "12f8d1", "eefffc", "7dfce7", "028e77", "02a187", "29feda", "88ffeb", "034339", "7cfae7", "b6fdf2", "01322b", "b2fdf2", "029982", "53fde4", "a8fff2", "a4fff1", "a3fbef", "023e36", "31f9de", "05b79f", "011f1b", "013d35", "002f29", "2ffee2", "90fff0", "e7fefb", "09eed3", "a7fcf2", "d9fefa", "17fae0", "03c7b0", "01796b", "01a390", "003c35", "022723", "05877a", "6bfaec", "8cfcf1", "04c2af", "fdffff", "66fdee", "ddfffb", "3bffeb", "1af5e3", "000808", "011210", "37faea", "e3fefc", "03b8a9", "16fde9", "05fee9", "b1fff9", "07afa4", "046e67", "99fcf5", "79fcf3", "01302d", "014843", "015c56", "36fef1", "2afff1", "023936", "d3fdfb", "7afbf4", "06f5e9", "014844", "012321", "02c2b8", "bcfffb", "006661", "befcfa", "4cf9f3", "18f8f0", "011716", "19faf3", "03b8b2", "02d5ce", "004846", "00efe7", "acfcfa", "011d1d", "dafefd", "02403f", "b4fdfc", "012d2c", "7cfefc", "004140", "005654", "09dfdf", "1cf7f7", "20f8f8", "011a1a", "012121", "001e1e", "f6ffff", "01fafa", "86ffff", "056b6d", "022d2e", "048a8c", "f3ffff", "014142", "026b6d", "34fafd", "6cfcfe", "ddfeff", "09d5dc", "f9ffff", "036d70", "86f8fc", "89f9fd", "03a2a8", "015052", "88fafe", "004648", "04666c", "f1feff", "05a9b1", "024549", "03797f", "b3fafe", "12f1fd", "cdfcff", "43f6ff", "3ceaf7", "23e9f7", "012023", "048a94", "effeff", "32eefc", "002123", "fcffff", "a5f9ff", "034147", "4deaf9", "034c52", "011e20", "b5f7fd", "a7f6fe", "000d0e", "94f6fe", "40efff", "d5f9fd", "07abbe", "0be0f7", "61ecfb", "037a87", "52ebfc", "017986", "004047", "06e6ff", "53e5f8", "034750", "000303", "45e5fa", "038090", "001215", "3de7fd", "016c7b", "008c9e", "cdf6fd", "9feffc", "16daf8", "11daf9", "04a2bb", "000e10", "02adc7", "0190a6", "eefdff", "bef3fc", "068aa1", "06a0bb", "000101", "026273", "e2faff", "028ca5", "4fe4fe", "003a45", "9eecfb", "6de2fa", "000202", "d5f7fe", "025565", "ebfbff", "79e8fe", "01a1c1", "dbf9ff", "0898b8", "01171c", "000708", "3dd7fa", "80e6fc", "29d5fc", "016a81", "01abd1", "1bd5ff", "8ae4fa", "3bd2f8", "4ad6f9", "05a2c9", "59dbfc", "75e2fd", "86e6fe", "016179", "004d60", "f5fdff", "daf6fe", "47d3f9", "41d2fa", "62dafc", "a7ebfe", "73e0fe", "01abda", "006b89", "f9fdff", "33caf8", "046f8f", "90e3fc", "12c4fa", "b1ecfe", "b5edfe", "ddf7ff", "0095c2", "14bdf5", "022734", "cdf1fd", "5dd3fb", "eefbff", "000709", "015773", "03bffe", "6edbff", "021d27", "d6f3fe", "057aa4", "034f6b", "4accfb", "3dc9fc", "82ddfe", "57d2fe", "00688d", "010b0f", "0788bb", "033d54", "9ce1fc", "62d0fc", "d9f4fe", "00212e", "c4eeff", "14bcff", "bfeafc", "ade4fc", "033951", "024460", "059fe1", "024a69", "027fb5", "52cbfe", "006a97", "05587f", "f5fbff", "72d0fb", "03557a", "023c56", "02628f", "0291d3", "0eb2fe", "d3f1ff", "033149", "055b85", "056fa4", "000000", "012b3f", "e3f5ff", "4ec3fd", "015e8d", "001c2a", "1daaf6", "f2faff", "022335", "022a40", "035f91", "011d2c", "95d9fe", "000b12", "00263a", "043755", "56bdf9", "02314c", "a4dcfd", "024165", "65c5fd", "ffffff", "eaf7ff", "40b9ff", "3aaff7", "ddf1fe", "05629c", "20a6f9", "024873", "b0e0fe", "8dd3fe", "003352", "bfe6ff", "032a44", "054f81", "044774", "035185", "a5dafd", "17a0fb", "c8e9fe", "50b8fe", "98d6ff", "033253", "0885df", "078ded", "dff1fe", "023a62", "037dd3", "bce3fe", "e7f5ff", "0075c9", "1393f5", "076fbf", "022e4f", "000102", "023862", "75c2fd", "e9f5ff", "c3e5ff", "00508d", "03233e", "c6e4fd", "f1f8ff", "033b69", "1a95fa", "69bafd", "001628", "0173d0", "000101", "0a7ee4", "087ee6", "2e9af9", "91cafc", "024279", "011426", "6bb9fe", "00182d", "005bab", "01070d", "0657a3", "46a3f9", "045199", "0470d5", "000c18", "2595fd", "00060b", "004c93", "010f1c", "dfeefe", "cee6fd", "1688f9", "c8e3fe", "035bb2", "c6e2fe", "aad4ff", "2291ff", "499df7", "6bb0fa", "1b86f8", "00080f", "023469", "5ca9fd", "7fbcfe", "d5e9ff", "002043", "043061", "0867d5", "a4cdfc", "4398fa", "f8fbff", "036adf", "01438e", "7bb8fe", "000307", "042a5a", "054087", "358df9", "011124", "dcecfe", "6faffd", "011b3a", "000307", "000308", "97c2fb", "03224a", "0659c6", "00070f", "010c1c", "0357c6", "011735", "318afe", "001736", "042c64", "042c65", "1574f8", "032c67", "adcffd", "034baf", "025ad5", "0153c5", "004cb6", "053275", "5798f9", "cce0fd", "e5effe", "011738", "0353ca", "01183c", "012967", "8dbaff", "0d66f5", "458af8", "f8fbff", "d4e4fe", "022154", "011434", "0243ad", "7eaffe", "003385", "0743ab", "0641a7", "689dfa", "95bbfc", "e9f1ff", "023387", "012f7f", "619bfe", "dbe8ff", "c1d6fc", "dde8fe", "010712", "064fd9", "0554e8", "73a3fd", "5892fd", "aac7ff", "0043be", "9ebdfb", "bed3fd", "032364", "cadbfe", "03359a", "1964fb", "b5cefe", "e6eeff", "001030", "3e79f7", "aec7fc", "c7d8fd", "021949", "032e8b", "033cb6", "457ffd", "eef3ff", "6495ff", "000000", "04246e", "0538ad", "477dfa", "1f61fa", "011b57", "abc4fe", "5c8dfe", "f3f6ff", "021239", "06309b", "c6d6fd", "f3f6ff", "749bfc", "0332ac", "012b92", "7ba0fe", "0031ad", "010512", "031649", "031852", "010b26", "628bfc", "022a95", "c1d1fe", "618bfe", "7ea1ff", "114af5", "fafbff", "04278f", "5a82fb", "021b67", "0337d4", "3567fd", "00175c", "fafbff", "4a72f7", "426cf8", "042386", "042490", "0432c9", "2e5efc", "011350", "0132d1", "003afa", "2955f6", "7794fa", "7a96fb", "021557", "e1e8fe", "02208c", "0224a0", "000e41", "00176b", "617ff8", "a1b3fc", "021048", "2651f9", "466afb", "d8e0fe", "000721", "0126ba", "002de1", "d9dffd", "2e53f7", "01092c", "768efb", "b2bffd", "032ce1", "a5b5fe", "0129da", "8ca1ff", "061c8e", "082ee9", "051d95", "020e4a", "03177d", "e3e7ff", "4463fd", "f3f5ff", "001370", "041369", "526bf9", "6279fa", "0525d6", "1d3efa", "a6b3fe", "e2e6ff", "8497fe", "fdfeff", "051681", "041375", "6377fa", "0521d2", "041fcb", "798bfd", "8898fe", "1a39fe", "000f72", "030b4a", "1c35f7", "5266fa", "020941", "041ac3", "c5ccfe", "7282fe", "f0f2ff", "001be6", "020730", "071bcb", "394cf9", "0b23f9", "031191", "0315bb", "021bf3", "010f8d", "bdc4ff", "7a85f9", "05108d", "0616c2", "5966fb", "6572fc", "a5acfe", "919afe", "00021c", "bec4ff", "cdd0fd", "7d85fa", "2735f8", "0510b6", "9198fd", "0311d3", "ecedff", "010767", "c1c5ff", "0810b7", "03085b", "adb1fc", "5e66fb", "1520fa", "01065c", "6a71fd", "4952fe", "7279ff", "e8e9fe", "4b51f8", "555afa", "03077b", "010330", "010458", "000229", "bfc1ff", "000127", "050772", "050784", "04067b", "5154fb", "c7c8fe", "3033fc", "00011c", "5254fe", "5154ff", "7171f9", "a8a8fc", "04047b", "00000d", "0505f8", "0303cb", "00000e", "010182", "00000a", "0a07a6", "020127", "0b07e2", "020134", "4845fb", "02014b", "03017d", "000007", "01002d", "524df8", "d3d2fd", "4943f9", "0904a3", "040148", "7e7afd", "3730fd", "040170", "6560ff", "7069f9", "090466", "02011e", "010013", "0b0399", "170bfb", "ebeaff", "b8b5ff", "0a00c4", "9c95fb", "050236", "09035f", "473afa", "928bfd", "e4e2ff", "8880fe", "948cfe", "c8c4ff", "ebe9fe", "05022c", "100491", "dcd8fe", "030121", "cecafe", "6253fd", "0a0173", "5b4cff", "120581", "04011d", "06012f", "1b06da", "9e93fd", "0a0155", "e5e2ff", "040024", "1900fd", "4a33f6", "020110", "10036d", "a296fc", "5d48fb", "6854fc", "9b8efe", "a89dff", "705eff", "e9e6fe", "0c0346", "462bf8", "9b8cfc", "c0b6fe", "e7e4ff", "7560fd", "06002a", "5e45ff", "644af7", "170582", "c7bdfd", "190494", "2705eb", "040016", "030014", "d4cdff", "bfb3ff", "180576", "0b0238", "2506be", "2505c5", "d0c7fe", "1f03ad", "f4f2ff", "090035", "4a26ff", "1b057b", "6645f8", "3007e6", "2c05d6", "3f15fa", "1e029c", "150170", "100056", "070024", "7e5ff8", "9278fa", "b4a2fc", "210495", "3305ea", "0f0149", "3a0afd", "5025fe", "c3b4ff", "2d08b4", "7f5df9", "0a012a", "1a036e", "9d83fc", "6e46fc", "170166", "130055", "582aff", "b19afb", "683cf8", "b39dfc", "110244", "7349fb", "c4b3fe", "1d0178", "3c02fe", "440bff", "1e046a", "1c0466", "c6b4fd", "0e0132", "270394", "faf8ff", "2b02a6", "170059", "d5c7ff", "b095fb", "9a77fa", "6f3df9", "703efa", "09011e", "0d0131", "7b4cfd", "0d0032", "14004c", "e2d7fd", "4909eb", "5312f8", "5616f9", "3504b2", "ded1fe", "3602bb", "6c32fe", "03000c", "28057a", "1e035c", "c2a9fc", "2a0383", "4905e8", "5710fb", "2e0297", "976bfe", "2c0093", "190348", "120234", "2f048b", "793dfa", "eee7ff", "4103c8", "915ffd", "0a001f", "b999ff", "0b011d", "2e0581", "070115", "0f012c", "8042fb", "864bfc", "4102bf", "cdb4ff", "160043", "c5a8fb", "8d53f9", "ece1fe", "22025e", "752dfb", "c2a2fe", "0b0020", "5401ee", "4900d1", "4b08be", "1a0243", "6510f8", "4305b0", "000001", "0b001e", "0c0021", "9d65fe", "f2eaff", "630af1", "340581", "3d0596", "f7f3ff", "8942fb", "330282", "4c02c4", "883efe", "f0e7ff", "5008bd", "e4d3fd", "0c011d", "4f05be", "883bfb", "dcc5fe", "b280fe", "7e29fe", "d6bbff", "ecdffe", "0d011d", "3e048e", "010003", "ae77fc", "1e0147", "b27cfe", "1e0048", "c398ff", "f8f3fe", "984df9", "d8bcfd", "852bfa", "6a05ee", "730bfb", "5002b7", "a058fe", "7308ff", "42068b", "ddc3fd", "020005", "39037c", "e0c8fe", "38027b", "f5eeff", "f6efff", "3f008c", "a154f8", "35046c", "6f07e6", "e2cafe", "af6bfc", "8218fb", "5002a9", "dcbdff", "faf6ff", "1f033e", "5106a2", "27024e", "5705b0", "5d04bc", "9a3efc", "7c04fc", "820ffe", "ae62ff", "bb7cfa", "5f07b7", "bf84fb", "d0a3fd", "850ffa", "8916fb", "ab5afd", "f4eaff", "1c0039", "350464", "f2e5fe", "9123f8", "7906e6", "030006", "dfbdfe", "b76dfe", "7b01ed", "c07cff", "050008", "f0e0fe", "faf4ff", "030005", "ddb8fe", "941ffc", "360164", "f2e4ff", "dfbaff", "47057c", "6006a9", "6a06bc", "deb7fd", "d7a9fd", "e2bffe", "b864fd", "8301ee", "1e0037", "270342", "c074fa", "47047a", "f0ddfe", "fffeff", "e1bbfe", "010001", "af47fe", "a938ff", "350459", "c171fa", "6a05b2", "8e06ef", "bb5ffc", "f2e1ff", "280145", "450175", "090010", "e9ccfd", "6706a8", "b042f9", "8305d6", "9908fa", "4a027b", "c166fd", "f4e5ff", "fbf6ff", "a82bf6", "8b08dd", "f9f0ff", "b03afa", "a61dfa", "ae30fc", "6802a8", "30004e", "41006a", "7407b3", "360354", "2c0244", "edd1fe", "e9c5fe", "6d03aa", "a308fd", "9201e6", "ce79ff", "3b0458", "bc4cf8", "0f0117", "f0d5fe", "8204c5", "8a03d3", "180024", "8701d0", "d587ff", "ce78f9", "a90ef6", "d994fc", "0a000f", "b529fb", "be41fc", "560180", "f2d7ff", "6b00a1", "b62cf6", "e8bcfd", "1b0128", "440363", "8604c2", "f8e8ff", "f7e7ff", "bc2dfe", "dc91ff", "a30ae5", "40035a", "cc5ffa", "6f049d", "3a0252", "8803c1", "0c0012", "c94efe", "e8b1ff", "e3a4fb", "9007c6", "c543f9", "d679fc", "f7e5fe", "f8e6ff", "9902d5", "470062", "8000b2", "db87fa", "ba14f6", "be1ef8", "a206da", "da7dfc", "3f0155", "9902d0", "230030", "e59fff", "bc11f5", "a608db", "f0c7fd", "f4d5fe", "da73fc", "db77fd", "4a0162", "fffeff", "e8a2ff", "200229", "bd09f4", "d048f9", "bf06f8", "690388", "f7dfff", "d758fd", "f8e0ff", "eaa7ff", "e69cfb", "7e06a0", "020003", "e07dfc", "dc6afc", "e9a0fe", "53016a", "f9e4ff", "62007e", "16011b", "c912f6", "eba6fc", "520366", "faeaff", "d32ffc", "72018e", "1c0022", "380046", "7e0698", "390245", "fdf4ff", "e580fc", "540266", "f9e1ff", "410150", "210029", "d61eff", "eea9fb", "d00ef6", "fcefff", "d51ff9", "ac04ce", "59026b", "dd3efd", "fbe7ff", "e35aff", "3d0347", "f4c3fd", "24012a", "ed97fc", "dc2efb", "d504fa", "110014", "fdf0ff", "31003a", "f3bafc", "7f0592", "fdf3ff", "f9d8fe", "af04c9", "d304f3", "9402ab", "700181", "120015", "e139f7", "f3b1fc", "0e000f", "320138", "f196fd", "f5b6fe", "c602df", "e316fe", "f8c1ff", "d30aea", "020002", "840592", "17011a", "f7bdfe", "e30bfb", "660171", "e60dfe", "f279ff", "dd0af0", "ed62f9", "e61ff8", "f49afc", "56025e", "030003", "f591fe", "fce2ff", "060007", "f8bdfc", "7a0582", "260129", "fbd0fe", "ee3cfb", "f68dfd", "f473fe", "fbc3ff", "6f0076", "fef0fe", "ed24f7", "910599", "f794fc", "ba04c4", "d303de", "f005fc", "c901d4", "f98eff", "f144f7", "f56ffa", "0b000b", "fbb7fd", "96039b", "f416fb", "e302eb", "250026", "cd00d4", "fbb7fc", "f76dfa", "0b000b", "fb96fc", "fef1ff", "a703aa", "1b001c", "8e0190", "2a002a", "ec0aec", "f841f8", "390239", "fb6efb", "fecafe", "fed6fe", "160016", "ce01ce", "c400c4", "310230", "d608d3", "8a0488", "fa3af7", "ffe9fe", "ffe6fe", "fea4fd", "fe7bfc", "ffe8ff", "f626ef", "ae06a9", "fc99f9", "fc98f9", "d704d0", "fd8bf9", "a3029e", "fe18f6", "ff27f8", "4b0348", "f614eb", "fc98f7", "f919ee", "fffcff", "770271", "a4029c", "fe91f9", "fff7ff", "790571", "6a0463", "fffcff", "f923eb", "55024f", "1d001b", "fe9ef8", "32002f", "ff27f1", "f96bed", "3b0236", "fc9cf4", "fff8fe", "fb23e9", "1a0018", "a10294", "250022", "ff0deb", "46033f", "57034f", "4a0243", "fffeff", "e905d2", "c003ad", "2a0025", "4c0045", "730067", "270222", "fca8f2", "870478", "ffecfc", "1d011a", "c903b2", "c202ab", "e501cb", "ff2ae6", "390232", "a60691", "fb81eb", "b6059e", "feddfa", "3c0134", "ffd6f9", "fe6beb", "6f0060", "f973e5", "060005", "c306a7", "6b035c", "e005bf", "feddf9", "fc04d7", "fe4de4", "ff09da", "dc09b9", "900579", "f944db", "f106c9", "fb24d7", "fd88ea", "3e0134", "7f016a", "ff82ea", "8a0672", "540345", "f70ccc", "fa42d8", "b40494", "930278", "fe70e4", "ca01a5", "910077", "fef3fc", "8e0572", "d507ac", "fda8ec", "e705ba", "150011", "fe8fe8", "160012", "ff93e9", "fedef7", "e408b5", "1a0115", "400233", "60024b", "2e0124", "150010", "ba0192", "23001b", "fdccf1", "fdd4f4", "480238", "e806b3", "fff9fe", "000000", "fffafe", "a5017f", "ffd8f6", "e209ac", "fa82dc", "750458", "cf059d", "060005", "fc25c6", "8f016b", "a8017e", "ff54d4", "600448", "fa68d3", "f823bf", "fed2f2", "220119", "ffe6f8", "fe74d9", "ffecfa", "f600b4", "ee0aad", "fb96df", "cc0694", "f106ae", "fd91de", "ae037d", "b90285", "24001a", "030002", "f61eb5", "f71ab5", "2f0121", "fdc3ec", "fdafe6", "b1037d", "730151", "f501ac", "ff89db", "40032d", "f83abc", "2e0120", "16010f", "f805ab", "2a011d", "fe94dc", "fe6ed1", "ffd0f0", "4b0333", "ad0676", "fa4fc1", "f911ab", "550239", "330122", "9a0268", "17000f", "ea009c", "5d043e", "a8066f", "0c0008", "fc9bda", "48012f", "fb16ab", "3e0128", "ffa9e1", "fff4fb", "f851bb", "cc0784", "240117", "fc9cd9", "fd96d7", "fb10a5", "580138", "8b0158", "3e0027", "f854b9", "feddf1", "fee7f5", "fb61c0", "fed5ee", "c5037a", "fe8ed3", "ffa6dd", "550035", "fba3d8", "5b0338", "fcacdc", "f10693", "0f0009", "feb6e1", "ffe6f5", "fe95d4", "ffa4db", "feebf6", "960559", "6f0342", "ab0466", "feb9e1", "fc28a3", "540131", "fd0194", "ff84cc", "f84faf", "fb89ca", "fa5db6", "fed8ed", "fa1095", "11000a", "720141", "fe65bc", "ffe0f2", "d8097b", "7a0445", "f938a2", "2c0119", "940352", "fed7ec", "fe7ac2", "fe088f", "ff4bae", "b60865", "fb9ed0", "fa5bb0", "3a011f", "fc62b4", "c8036c", "fecce7", "ffaad7", "0f0008", "290216", "feeaf4", "fdb8dc", "fdbbdd", "cd046c", "f90482", "6a0137", "ffaed8", "f70080", "7e0542", "19010d", "fed4e9", "d8066f", "ec0578", "fb0681", "feabd5", "3f0020", "ffc7e3", "fa91c4", "d5086b", "4d0226", "fee7f2", "fb2c90", "feadd4", "fd429d", "ba015b", "560029", "f972b1", "f71880", "fdb9d9", "2e0116", "febcdb", "fc288b", "a0024c", "ffd3e8", "ffaed4", "f972af", "4f0325", "9b0549", "1c010d", "fdb1d3", "fc4396", "8c0140", "85013c", "ff1b81", "360219", "fb8abb", "f93489", "fed4e6", "580227", "d0035c", "fd167a", "ffd1e5", "ff539d", "e20964", "320216", "c60656", "f91c78", "cc0457", "fc418f", "760132", "1c000c", "7c0034", "f5116c", "1e010d", "c20651", "c20551", "94033d", "8a0239", "ffdfec", "e7015d", "db0058", "f85b97", "170109", "fdbcd5", "320114", "fc7cad", "090004", "fd2276", "fe639e", "ff2c7d", "fdd2e2", "f72f78", "520320", "ffffff", "2b0110", "fec0d7", "feacca", "6b0128", "ff9abf", "fcbad1", "a1063c", "630324", "fb6d9f", "940336", "fd6a9d", "630123", "fe699d", "ff045c", "fcb0c9", "fca7c4", "f81762", "a9043b", "fc5a90", "2b010f", "feb5cd", "fe0558", "ff0f5f", "f9759f", "fb89ad", "59031e", "7a0329", "470118", "ffeef3", "ffdce7", "fe3876", "070002", "f7457b", "4c0319", "b10539", "fee7ee", "fda9c2", "4b0117", "780125", "fe5185", "e60045", "f6326a", "f71857", "7a0425", "97042e", "98032d", "760223", "510117", "0d0004", "d3003c", "110105", "1f0109", "fca6bd", "fdc0d1", "fd8dab", "1a0007", "790121", "3d0010", "71001e", "b40733", "4b0315", "2d010c", "fecdd9", "fdb4c6", "a8032c", "fe7395", "fe104b", "080002", "090002", "090002", "f81b4f", "910425", "550215", "fc3a68", "81011f", "84011f", "a50026", "f85e80", "fff3f6", "fcabbc", "77031c", "fff8fa", "d80331", "6f0119", "fe7693", "bf0029", "fb94a9", "9e0624", "fb7b95", "fed5dd", "160005", "fc385f", "fff2f5", "a40121", "b00023", "d1092e", "fedde3", "270108", "4b020f", "fb4566", "020000", "c40226", "fe5977", "38000a", "8f061d", "fdd3da", "5b0311", "a1041e", "fc667f", "fc3f5e", "d30225", "2a0007", "f10028", "780516", "44020c", "1c0105", "fa405c", "670211", "fd7388", "880116", "44000b", "2f0007", "1b0105", "fcacb7", "fee1e5", "fa304b", "fc7082", "b8031b", "fe7183", "ffa7b2", "ff5a70", "fcb1b9", "f84055", "8c0414", "090001", "fc5669", "fd7383", "e6021d", "fe6e7e", "fffdfd", "890613", "fa6a79", "ce061a", "fdbbc2", "fb4153", "240104", "fd606f", "f8011a", "fff0f2", "e70a1c", "8b0510", "2e0105", "6f030c", "5f020a", "240104", "130002", "fe8e97", "ffa6ad", "61040a", "fca8ae", "fc959c", "020000", "fed3d5", "fc2e3b", "ffe6e8", "fe3b48", "770008", "f50b16", "020000", "fca2a6", "fb5f67", "fb343d", "99020a", "fec2c5", "a10109", "2c0002", "550406", "740408", "fdc0c2", "290102", "f2050d", "730206", "fd1119", "ffcacb", "790004", "150101", "f83c3f", "fa5558", "fff4f4", "070000", "ffffff", "380101", "fe3a3d", "df0004", "db0909", "fa8282", "f93e3e", "3b0202", "800303", "feaeae", "fd6363", "aa0101", "ffebeb"]

	
	
flow = new FlowComponent
flow.showNext(teamDashboardScreen)

userTeams = 
	"RCL": true
	"Pinch Labs": false
	"Tabby": true

forceFlowUpdate = () ->
	teamCreateScreen.size = Canvas.size
	teamDashboardScreen.size = Canvas.size
	teamSignOrCreateScreen.size = Canvas.size
	teamManagementScreen.size = Canvas.size
	teamDetailViewScreen.size = Canvas.size
	teamCreatePendingScreen.size = Canvas.size
	teamCreateSuccessScreen.size = Canvas.size
	errorOverlayScreen.size = Canvas.size
	noTeamInfoScreen.size = Canvas.size
	welcome1Screen.size = Canvas.size
	welcome2Screen.size = Canvas.size
	welcome3Screen.size = Canvas.size
	teamSignOrCreateScreen.size = Canvas.size
	licenceScreen.size = Canvas.size
	teamDashboardScreen.size = Canvas.size
	teamJoinScreen.size = Canvas.size
	teamCreateSuccessScreen.size = Canvas.size
	teamCreateScreen.size = Canvas.size
	teamManagementScreen.size = Canvas.size
	teamDetailViewScreen.size = Canvas.size
	teamCreatePendingScreen.size = Canvas.size
	
	
	
	
	flow.size = Canvas.size
	

randos = 
	'Mark Sythers': false
	'Michelle Tan': false
	'Gordon Rubens': false
	'Theresa Papadopolous': false
	'Franz Soulle': false
	'Mick Chan': false

randomizeRandos = () ->
	for person, value of randos
		if Math.random(1) < 0.5
			randos[person] = true

randomizeRandos()
			
updateRandos = () ->
	dice = Math.random(1)
	for person, isActive of randos
		if Math.random(1) <0.01  #randomly flip
			if person is true then person = false
			else person = true
						
		

results = {} #this is where the results of the form end up

thisUser =
	isInOffice : false
	

motivationalStringArray = [ "Hey, check out https://open.spotify.com/album/52PLNrXUMtPUZwcueV75J1" ]

userLabelArray = []

oldUserString = ""

`function isJson(item) {
    item = typeof item !== "string"
        ? JSON.stringify(item)
        : item;

    try {
        item = JSON.parse(item);
    } catch (e) {
        return false;
    }

    if (typeof item === "object" && item !== null) {
        return true;
    }

    return false;
    }`

@updateMouseX = (mouseX,mouseY) ->

	if workInertiaActive
		if lastMouse.virgin is true # Set the initial value
			lastMouse.virgin = false
			lastMouse.x = mouseX
			lastMouse.y = mouseY
		else
			if (lastMouse.x isnt mouseX) or (lastMouse.y isnt mouseY)
				if workInertia <= 16 then workInertia += 3 #some work energy
			else
				workInertia -= 1 #gravity pulls down anything not moving
		lastMouse.x = mouseX
		lastMouse.y = mouseY
	
	
	
	
@updateCloudPhotoRotation = (angle) ->
#	cloud_png.rotation = angle
#	CocoaBridge.photoRotated_(angle)

@flipCloudPhoto = () ->
#	cloud_png.rotationY +=180
	
@updatePhotoText = (text) ->
#	photoLabel.text = text

@updateUserName = (myName, userID) ->
# 	if userID?
	username = myName
	cocoaBridgeIsUp = true
	
	
	

coverPageText = new TextLayer
# 	backgroundColor: '#ffff00'
	width: Screen.width
	height: 64
	text: appVersionString
	fontWeight: 400
	fontSize: 12
	letterSpacing: 1.2
	padding: 12
	textAlign: 'center'
	x: Align.center()
	y: Align.center()
	
	color: '#ffffff'

coverPageText.states.done =
	opacity: 0
	animationOptions:
		time: 3
		curve: 'ease-in'

coverPageText.animate('done')





#global tracking of the firebase connection. Nicely, it re-connects automatically and seems to know instantly when connection goes out. 
 
firebaseStatus = ""

# Framer-specific overrides 
Framer.Extras.Hints.disable()
document.body.style.cursor = "auto"



hasHeardFromServer = false


#toDo - Make a mode here which fakes CocoaBridge


if sandbox then username = "Susan Farley"
if username  is ""  then username = "Susan Yīn"



# Please deactivate Auto Refresh and reload manually using CMD+R!
# Firebase
{Firebase} = require 'firebase'

# UI variables 
cellSize = 56


if sandbox
	#SANDBOX
	
	demoDB = new Firebase
		projectID: "tabbysandbox" # ... Database → first part of URL
		secret: "TBkoOoRnmPev8TfFtcTJViG3Wb0gFP1IGVXoJ8kT" # ... Project Settings → Service Accounts → Database Secrets → Show (mouse-over)

else
# 	PRODUCTION ONE:
# 	The required information is located at https://firebase.google.com → Console → YourProject → ...
	demoDB = new Firebase
		projectID: "tabbytest-8e201" # ... Database → first part of URL
		secret: "oParj369e6kYid1tungWZPDTMnYgrwOaC0hmBCnG" # ... Project Settings → Service Accounts → Database Secrets → Show (mouse-over)


demoDB.onChange "connection", (status) ->
	if status? then firebaseStatus = status
	# status is either `connected´ or `disconnected´
	if firebaseStatus is 'disconnected'
		clearScrollView()
		scrollEmptyStateLabel.animate("disconnected")
		oldUserString = "" #reload user list after outage
		updateUserList()
	else 
		scrollEmptyStateLabel.animate("connected")
		updateUserList()
		serverReady = true



#################
# Initialize








# set up all the buttons
myButtonArray = []

allButtons = new Layer
	parent: teamDashboardScreen
	width: Screen.width
	height: 100
	backgroundColor: 'transparent'



showMotivationOverlay = (key) ->
	if key is '🏆' then showConfetti()
	motivationOverlay.backgroundColor = '#D1C300'
# 	motivationOverlay.opacity = 1
	maxScreenDimension = 1.5 * Math.max(Screen.width, Screen.height)
	segments1.width = maxScreenDimension
	segments1.height = maxScreenDimension
	
	segments1.midX = Screen.midX
	segments1.midY = Screen.midY
	
	
	segments2.width = maxScreenDimension
	segments2.height = maxScreenDimension
	
	segments2.midX = Screen.midX
	segments2.midY = Screen.midY
	
	segments3.width = maxScreenDimension
	segments3.height = maxScreenDimension
	
	segments3.midX = Screen.midX
	segments3.midY = Screen.midY
		
	keyDropAnimation.restart()	
	motivationOverlay.width = Screen.width
	motivationOverlay.height = Screen.height
	motivationOverlay.x = 0
	motivationOverlay.y = 0
	
	motivationOverlay.midX = Screen.midX
	
	
	rotate1.restart()
	rotate2.restart()
	rotate3.restart()
	keyDropAnimation.restart()
	
	if !key? then key = '🏆'
	motivationOverlayText.text = key

	motivationOverlayText.midX= Screen.midX
	

	
	showMotivationAnimation = new Animation motivationOverlay,
		opacity: 1
		midX: Screen.midX
		
		
	showMotivationAnimation.on Events.AnimationEnd, ->
		Utils.delay 3, ->
			hideMotivationAnimation = new Animation motivationOverlay,
				opacity: 0
				midX: Screen.midX
			hideMotivationAnimation.start()



			
			
	showMotivationAnimation.start()
	
	
showConfetti = () ->
	if !shouldStop then return
	confettiLayer.opacity = 1
	confettiStart()
	Utils.delay 5, ->
		hideConfetti  = new Animation confettiLayer,
			opacity: 0
			options:
				time: 9
		hideConfetti.on Events.AnimationEnd, ->
			confettiStop()
		hideConfetti.start()


	
buttonTips = new TextLayer
	parent: teamDashboardScreen
	text: 'Having a win'
	fontSize: 11
	fontWeight: 800
	color: '#eeee00'
# 	backgroundColor: '111100'
	padding: 4
# 	width: Screen.width
	textAlign: 'center'
	opacity: 0
	y: Align.top(84)
	x: Align.center(-32)



buttonTips.states.in = 
	opacity: 1
	animationOptions: 
		time: 1

	

	
buttonTips.states.out = 
	opacity: 0
	animationOptions: 
		time: 0


lastTriggered = 0


# little function that requires certain number of triggers in a set time else it times out
triggered = () ->
	if (Date.now() - lastTriggered) > 2000
		buttonTips.animate('out')
	else 
		Utils.delay 2.1, ->
			triggered()
		

allButtons.onMouseOver (event, layer) ->
	Utils.delay 1, ->
		buttonTips.animate('in')
	lastTriggered = Date.now()
	triggered()

	
			
	
createButtonLayer = (name, x, y) ->
	@myLayer = new TextLayer
		parent: allButtons
		name: name
		text: name
		fontSize: 16
		padding: 8
		backgroundColor: '#444B54'
		borderRadius: 2
		borderColor: 'white' 
		

	@myLayer.states.down = 
		backgroundColor: '#B6C9E0'
		
	@myLayer.states.over = 
		backgroundColor: '#333A43'
	
	@myLayer.states.default = 
		x: x
		backgroundColor: '#444B54'
		
		
	
	@myLayer.onMouseDown (event, layer) ->
		layer.stateSwitch('down')
	
	@myLayer.onMouseOver (event, layer) ->
		layer.stateSwitch('over')
		buttonTips.text = myButtonHelperText[name]
		
		
		
		
	@myLayer.onMouseOut (event, layer) ->
		layer.stateSwitch('default')

		
	@myLayer.onMouseUp (event, layer) ->
		layer.stateSwitch('default')
		
	@myLayer.onClick (event, layer) ->
		motivationOverlay.backgroundColor = myButtonColor[name]
		writeNewEvent(username, name)
		showMotivationOverlay(name)
		
	myButtonArray.push(@myLayer)
	
	
#### emoji buttons

myButtons = ['👋','🔨','🤔','🏆','☕️','🍔','🚌','🚪']

myButtonHelperText = 
	'👋': 'Hi!'
	'🤔': 'Little feedback/help?'
	'🔨': 'Hammering on something'
	'🚌': 'Travelling/ extra-remote'
	'🏆': 'Winning!'
	'☕️': 'Shorter break'
	'🍔': 'Longer break'
	'🚪': 'Heading out the door'
	
myButtonColor = 
	'👋': '#B37BA4'
	'🤔': '#6EEB83'
	'🔨': '#A5CCD1'
	'🚌': '#64A6BD'
	'🏆': '#ffff00'
	'☕️': '#FF206E'
	'🍔': '#EE6055'
	'🚪': '#161925'
	
	
#todo add a Zz 😴

for buttons in myButtons
	createButtonLayer(buttons)


updateButtonLayout = (myButtonArray, myButtons) ->
	for index, eachButton of myButtonArray
		columns = 4
		contentWidth = eachButton.width * columns
		padding = 2
		combinedWidth = (padding * (columns - 1)) + (contentWidth  )
		originLeft = Math.floor((Screen.width - combinedWidth) / 2)
		x = originLeft +  (index * (eachButton.width + padding))
		eachButton.x = x
		eachButton.y = 8
		if index > 3
			eachButton.y = padding + 8 + eachButton.height
			eachButton.x -= (combinedWidth + padding) 
	

updateButtonLayout(myButtonArray, myButtons)



########## team control UI

updateUserTeamUI = () ->
	for things in teamListControl.children
		things.destroy()
		
	
	lastXPosition = 0
	for theTeam, isActive of userTeams
		if isActive then textOpacity = 1 else textOpacity = 0.2
		buttonTeam = new TextLayer
			name: theTeam
			parent: teamListControl
			x: lastXPosition
			y: Align.center()
			fontSize: 11
			color: 'white'
			fontWeight: 600
			padding: 2
			y: Align.center()
			text: theTeam
			opacity: textOpacity
		lastXPosition = (buttonTeam.maxX + 4)
		
		buttonTeam.onClick (event, layer) ->
			tempName = ""
			tempName = layer.name
			for iTeam, value of userTeams
				if userTeams[tempName] is true
					userTeams[tempName] = false
				else userTeams[tempName] = true
				updateUserTeamUI()
	
updateUserTeamUI()






button_group.onClick (event, layer) ->
	errorText.text = 'what tha'
	flow.showOverlayTop(errorOverlay)

buttonEeek.onClick (event, layer) ->
	flow.showPrevious()
		
buttonArrowBack.onClick (event, layer) ->
	flow.showPrevious()
	
	
	
	
	
################

#set the states to down. Prettier way is possble to do this using States, todo
Screen.backgroundColor = '#606A77'



# update the main view
updateTabbyView = () ->
	maxDimension = Math.min(teamDashboardScreen.width, (teamDashboardScreen.height - cellSize))
	tabbyView.y = 0
	tabbyView.height = maxDimension
	tabbyView.width = maxDimension
	tabbyView.midX = Screen.midX
	
tabbyView = new Layer
	parent: teamDashboardScreen
	backgroundColor: '#444B54'
	opacity: 0

tabbyPlaceHolder = new TextLayer
	parent: tabbyView
	text: 'Coming soon…'
	fontSize: 12
	x: Align.center
	
	
tabbyView.sendToBack()


updateTabbyView?()


# here we set up the scroll view, without any content. That comes in later when database is connected 
scroll = new ScrollComponent
	parent: bottom_rectangle
	size: Screen.size
	scrollHorizontal: false
	height: cellSize
	width: Screen.width
	y: Align.bottom
	backgroundColor: "#444B54"
scroll.scrollHorizontal = true
scroll.scrollVertical = false

scroll.mouseWheelEnabled = true

scroll.content.backgroundColor = 'transparent'
#empty state
funCheckingText = Utils.randomChoice(['checking alleyways…', 'meowing for others…', 'sniffing internets…', 'coolpeeps radar on…', 'anyone cool as you?…', 'helloooo world…'])

scrollEmptyStateLabel = new TextLayer
	parent: scroll
	backgroundColor: 'transparent'
	fontSize: 11
	textAlign: "center"
	fontWeight: 400
	letterSpacing: 1
	color: "#ffffff"
	text: funCheckingText
	padding: 4
	x: Align.center()
	y: Align.center()
	animationOptions: 
		time: 1


scrollEmptyStateLabel.states.alone =
	text: 'No other cool cats'
	opacity: 1
	textAlign: "center"
	animationOptions:
		time: 1
	
scrollEmptyStateLabel.states.disconnected =
	text: 'Offline mode'
	opacity: 1
	textAlign: "center"
	animationOptions:
		time: 1

scrollEmptyStateLabel.states.connected =
	text: ''
	opacity: 0
	textAlign: "center"
	animationOptions:
		time: 1
	
	
scrollEmptyStateLabel.sendToBack()

banner = new Layer
	backgroundColor: '#ffff00'
	height: 40
	width: Screen.width
	
winnerName = new TextLayer
	width: banner.width
	padding: 8
	parent: banner
	x: 8
	fontSize: 20
	color: '#111111'
	y: Align.center
	
banner.maxY = 0
banner.states.showing =
	y: 0


banner.states.hidden =
	y: -40
	animationOptions:
		time: 0.2


# winnerName.textTransform = "uppercase"
winnerName.x = 40

showNotificationBanner = (eventNotification, eventKey) ->
	winnerName.text = eventNotification
	animationB.start()
		#todo make a state for the entire banner, or different banners. this is a hack...
	

	
# Animate the layer to the right 
animationB = new Animation banner,
	banner.states.showing
	curve: "Spring"


animationB.on Events.AnimationEnd, ->
	Utils.delay 3, ->
		banner.animate('hidden')
	
	
# animationB.on Events.AnimationEnd, notificationBanner.states.



timeAtLaunch = Date.now()




timeNow =  Date.now()










# todo
# joinTeam(teamCode)
# show code Screen to user
# get codeVariable
# look up the code to see if valid
# Add this name to the user's teamMemberships
# if not valid code, show error
# if success, show screen to add
# update UI

		
#bookmark

Events.wrap(window).addEventListener "keydown", (event) ->
	if firebaseStatus isnt 'connected'
		print 'not ready yet'
		return
	if event.keyCode is 78 #this is 'n' for 'new team'
		print 'starting process'
		# lookup more here: http://keycode.info
		#here's where we're going to make a new team
		myNewTeamName = 'Cats of Wynnum'
		teamFindFreeCodeAndCreateTeam(myNewTeamName)


teamFindFreeCodeAndCreateTeam = (myNewTeamName) ->
	theKey = "/teamDirectory/"
	demoDB.get theKey, (teamCodeList) ->
	#find a spare code
		for key, value of teamCodeList
			if value is "" 
				print key
				tempTeamObject ={}
				tempTeamObject[key] = myNewTeamName
				print tempTeamObject
				newKey = "/teamDirectory/"+ key
				demoDB.put(newKey, myNewTeamName)
				return
				
		print '''Error, couldn't create team'''		

		


	



# teamNameToCreate = 'test team'


# todo getTeamDirectory
# get an object that contains all the teamcodes + whether they're muted or not


# todo Look up if user is on a particular team
# isUserOnTeam = (username, teamCode)


# todo
# update my team list based on all the teams I'm in.


# todo When a notification comes in, check to see if that user is on one of my teams, if not, do nothing

# todo, when drawing the list of users, only add them to the UI if they're on one of my teams 








writeUserStatusEvent = (username) ->
	if firebaseStatus is 'connected'
		# this writes a key value into /users for the current username and the lastUpdate
		timeNow =  Date.now()
		
		Event = 
			username
		lastUpdatedString = "/" + timeNow
		userPath = "/users/"+ username
		lastUpdatedKey = userPath + '/lastUpdated'
		demoDB.put(lastUpdatedKey, timeNow)
		workInertiakey =  userPath + '/workInertia'
		workInertia = Math.max(workInertia, 0)
		demoDB.put(workInertiakey, workInertia)
	
writeNewEvent = (username, userEventKey) ->
	# write a new entry
	if firebaseStatus is 'connected'
		myArray = username.split " "
		firstNameWinner = myArray[0]
		timeNow =  Date.now()
# 		if userEventKey is 'win' then eventString =  firstNameWinner + ' had a win!' 
		eventString =  firstNameWinner + ' is ' + userEventKey
		Event = 
			username: username
			eventKey: userEventKey
			unixTime: timeNow
			eventString: eventString
		
		dbString = "/" + timeNow
		
		demoDB.put(dbString,Event)
		
		demoDB.put('/lastUpdate', timeNow)
		


writeLastUpdatedEvent = (thisTime) ->
	if firebaseStatus is 'connected'
		if not thisTime? then timeNow = Date.now()
		else timeNow = thisTime
		dbString = "/" + timeNow
		demoDB.put('/lastUpdate', timeNow)
###############


####### isInTheOffice stuff

checkUserIPAddress = () ->

	`function httpGetAsync(theUrl, callback)
	{
	    var xmlHttp = new XMLHttpRequest();
	    xmlHttp.onreadystatechange = function() { 
	        if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
	            callback(xmlHttp.responseText);
	    }
	    xmlHttp.open("GET", theUrl, true); // true for asynchronous 
	    xmlHttp.send(null);
	}`
	
	myFunction = (response) ->
		if JSON.parse(response)['ip'] is "61.68.35.10"
			thisUser.isInOffice = true
		else thisUser.isInOffice = false
		
	httpGetAsync('//ipinfo.io/json', myFunction)

############## work inertia workinertia stuff

colorFromInertia = (theUserName, inertiaLevel) ->
	return  Color.mix("#4C545E", colorFromName(theUserName), (inertiaLevel /16), true)
	
# blurry fuzzy thing
updateUserWorkInertia = (theUsers) ->
	if !workInertiaActive then return #override for when innactive
	for theUser,userData of theUsers
		if theUsers[theUser]['workInertia']?
			theInertia = theUsers[theUser]['workInertia']
			for theLayer in scroll.content.children
				if theLayer.name is theUser
# 					theLayer.children[2].width = theInertia 
# 					theLayer.children[2].height = theInertia 
# 					theLayer.children[2].center()
					
					lastUserWorkInertiaLevel[theUser] = theInertia

					newCellColor = colorFromInertia(theUser, theInertia) 
# 					theLayer.backgroundColor = newCellColor
					animateInertia = new Animation theLayer,
						backgroundColor: newCellColor
						options:
							time: 9
					
					animateInertia.start()






############ Badge stuff
updateUsersBadge = (theEvent) ->
	#update the users's badge
	# somebug lives here
	if theEvent.eventKey isnt '' #if the event isnt blank
		for theLayer in scroll.content.children
			if theLayer.name is theEvent.username
				badgeLayer = theLayer.children[1]
				badgeLayer.text = theEvent.eventKey
				badgeLayer.opacity = 1
				try fadeOutStateAnimation = new Animation badgeLayer,
					opacity: 0
					options:
						time: 1
				
				Utils.delay 600, -> 
					fadeOutStateAnimation.start()
					#keep it on the screen for 10 minutes before fadeing out
					#todo consider making the times dynaic to the event. For example,
					# 9 minute coffee

demoDB.onChange "/lastUpdate", (value) -> 
	if firebaseStatus isnt 'connected' then return
	if !hasHeardFromServer 
		hasHeardFromServer = true
		serverReady()
		
		
	if ( Date.now() - value) < 5000 
		#Don't do anything on launch, because the onChange gets called on launch. 
		
		if firebaseStatus is 'connected'
			lastUpdateString = '/' + value
			demoDB.get lastUpdateString, (theEvent) ->
				if theEvent?
					myArray = theEvent.username.split " "
					eventNotification =  theEvent.eventString
					
					
					if theEvent.eventKey is '🏆' and theEvent.username isnt username  
						showConfetti()
					
					#now we show the local notifications as well as the Mac one
					if theEvent.username isnt username #don't show the notification if it's me
						showNotificationBanner(eventNotification, theEvent.eventKey)
						
					if theEvent.username isnt username #don't show the notification if it's me
						if !sandbox
							try CocoaBridge.showMacNotification_(eventNotification) #send it to the mac

					updateUsersBadge(theEvent)

									 


Utils.interval 10, ->
	if firebaseStatus is 'connected' and workInertiaActive
		userListKey = "/users/"
		demoDB.get userListKey, (theUsers) ->
			
			updateUserWorkInertia(theUsers)
			updateUserList()

updateMacUserID = (userID) ->
	CocoaBridge.writeUDID_(userID) #send it to the mac
		
		

@photoAngle = 0
# 
# cloud_png.midX = Screen.midX
# cloud_png.midY = Screen.midY
# 
# # create new slider 
# angleSlider = new SliderComponent
# 	y: 90
# 	width: 200
# 	min: 0
# 	max: 360
# 	x:Align.center
# 	
# 	
# 	
# angleSlider.knob.backgroundColor = '#555555'
# angleSlider.knob.draggable.momentum = false
# 
# 
# 
# photoLabel  = new TextLayer
# 	fontSize: 22
# 	parent: cloud_png
# 	text: 'Cloud'
# 	padding: 12
# 
# # listen for knob motion
# angleSlider.knob.onMove (event, layer) ->
# 	@photoAngle = angleSlider.value
# 	updateCloudPhotoRotation(angleSlider.value)
# 
# Button.onClick (event, layer) ->
# 	flipCloudPhoto()




##############


# set up form inputs
# Made by Taylor Palmer from uxtools.co
# Need help? Contact me at taylor@uxtools.co

# Using Benjamin's input module: 
# https://github.com/benjamindenboer/FramerInput
{InputLayer} = require "input"

# Reset the cursor to normal
document.body.style.cursor = "auto"

# Turn off purple hints
Framer.Extras.Hints.disable()

# Original Form Data

# Object where we store the data
data =
	name: ""
	name2: ''
	type: "Dog"
	age: 2
	notes: ""
	personality: ""
	fixed: false

# Function used to display data on screen using the "results" textLayer
displayFormData = () ->
	results.text = JSON.stringify(data)
	
# Fire it on load
displayFormData()

# Text Input

# This function wraps the layer in a real input
input1 = InputLayer.wrap(textInput, placeholderText)
input1.fontWeight = 800
input1.backgroundColor = 'white'
# When the user types...
input1.onValueChange ->
	# Store the data in the Object
	data.name = input1.value
	# And display it on the screen.
	displayFormData()
	
	
# remember to name inputs with care
	


# Drop Down

# # When the drop down is clicked
# dropDown.onClick () ->
# 	# Show or hide its menu
# 	if dropDownMenu.visible
# 		dropDownMenu.visible = false
# 	else
# 		dropDownMenu.visible = true
# 
# 	# For each menu option
# 	for option, i in dropDownMenu.children
# 		# When it's clicked
# 		dropDownMenu.children[i].onClick (event, layer) ->
# 			# Show the selected option in the drop down
# 			dropDown.selectChild("text").text = layer.text
# 			# Hide the menu
# 			dropDownMenu.visible = false
# 			# Update the data
# 			data.type = layer.text
# 			# Display data on screen
# 			displayFormData()

# Stepper

# # This function wraps the layer in a real input
# stepper1 = InputLayer.wrap(stepper, stepperText)
# stepper1.value = 2
# 
# increaseValue = () ->
# 	currentValue = parseInt(stepper1.value)
# 	stepper1.value = currentValue + 1
# 	# Store the data in the Object
# 	data.age = stepper1.value
# 	# And display it on the screen.
# 	displayFormData()
# 
# decreaseValue = () ->
# 	currentValue = parseInt(stepper1.value)
# 	stepper1.value = currentValue - 1
# 	# Store the data in the Object
# 	data.age = stepper1.value
# 	# And display it on the screen.
# 	displayFormData()
# 
# stepUp.onClick () ->
# 	increaseValue()
# 	
# stepDown.onClick () ->
# 	decreaseValue()
# 
# stepper1._inputElement.addEventListener 'keydown', (event) ->
# 	initialValue = parseInt(stepper1.value)
# 	# If it's the arrow up key
# 	if event.which == 38
# 		increaseValue(initialValue)
# 	# If it's the arrow down key
# 	if event.which == 40
# 		decreaseValue(initialValue)
# 		
# # When the value changes...
# # Note: this won't catch the clicks on the arrows
# # 		because they aren't real events on the input
# stepper1.onValueChange ->
# 	# Store the data in the Object
# 	data.age = stepper1.value
# 	# And display it on the screen.
# 	displayFormData()
# 
# # Multi-line Text Input

# # This function wraps the layer in a real input
# input2 = InputLayer.wrap(textarea, textareaText, multiLine: true)
# # When the user types...
# input2.onValueChange ->
# 	# Store the data in the Object
# 	data.notes = input2.value
# 	# And display it on the screen.
# 	displayFormData()
# 
# # Radio Buttons

# # Create array of radio buttons
# radioButtons = [RadioBase1, RadioBase2, RadioBase3]
# 
# # Loop through the array
# for button, i in radioButtons
# 	# Find the "outerCircle" child layer
# 	# and creates states for it
# 	button.selectChild("outerCircle").states =
# 		selected:
# 			backgroundColor: "#1199EE"
# 			borderColor: "transparent"
# 		deselected:
# 			backgroundColor: "white"
# 			borderColor: "#CED4DA"
# 	# When a radio button is clicked
# 	radioButtons[i].onClick (event, layer) ->
# 		# Deselect all the radio buttons
# 		for button, c in radioButtons
# 			radioButtons[c].selectChild("outerCircle").stateSwitch("deselected")
# 		# Select the one that was clicked
# 		layer.selectChild("outerCircle").stateSwitch("selected")
# 		# Update the data object
# 		data.personality = layer.selectChild("label").text
# 		# And display it on the screen.
# 		displayFormData()

# Check Box

# # Create states for the check icon
# checkIcon.states =
# 	selected:
# 		fill: "#1199EE"
# 	deselected:
# 		fill: "white"

# # When the check box is clicked
# checkBox.onClick (event, layer) ->
# 	# Toggle the states of the icon
# 	checkIcon.stateCycle("selected", "deselected")
# 	# Use the name of the state to update the data property
# 	if checkIcon.states.current.name == "selected"
# 		data.fixed = true
# 	else
# 		data.fixed = false
# 	# Display the data on screen
# 	displayFormData()

# testRectangle.clip = false

Canvas.on "change:size", ->
	forceFlowUpdate()




# Canvas.on "change:size", ->
# 	Utils.delay 0.1, ->
# 		Framer.Device.deviceType = "fullscreen"









#############

# window resizes #########


window.onresize = () ->
	updateCanvasDimensions?()

updateCanvasDimensions = () ->
	teamDashboardScreen.width = Canvas.width
	teamDashboardScreen.height = Canvas.height
	scroll.width = teamDashboardScreen.width
	scroll.y = Align.bottom
	updateTabbyView?()
	if scrollEmptyStateLabel?
		scrollEmptyStateLabel.midX = teamDashboardScreen.midX
		
	updateButtonLayout(myButtonArray, myButtons)
	#update where the buttons are placed
	
	
updateCanvasDimensions?()

colorFromName = (name) ->
	firstLetter = 15* name.charCodeAt(0)
	firstLetter += 15 + (name.length * 2) 
	
	myHue = firstLetter%360
	theColor = new Color
		h: myHue
		l: 0.30
		s: 1
	return theColor
	
	
	

window.addEventListener "keydown", (keyboardEvent) ->
	switch keyboardEvent.keyCode
		when 40
			teamDashboard.backgroundColor = '#441111'
			username = "Ima Testing!"


clearScrollView = () ->
	for keys, things of scroll.content.children
		things.destroy()
 
makeStringFromObject = (theObject) ->
	theString = ""
	for theUsername, theUserdata of theObject
		if isFresh(theUserdata.lastUpdated)
			theString += theUsername
	return theString




updateUserList = () ->
	
	# here we update all the 
	if firebaseStatus isnt 'connected' then return
	userListKey = "/users/"
	demoDB.get userListKey, (theUsers) ->
		
		if oldUserString is makeStringFromObject(theUsers)
			return
		
		oldUserString = makeStringFromObject(theUsers)
		
		if not isJson(theUsers)
			return

		if scroll.content.children.length > 0
			clearScrollView?()
			
		
		numUsers =  Object.keys(theUsers).length
		
		userArray = []
		
		for theUsername, theUserdata of theUsers
			if isFresh(theUserdata.lastUpdated)
				if theUsername isnt 'Keith Testing'
					if theUsername isnt 'Elon Musky' 
						userArray.push(theUsername)
						
		

#				commented logic out below to show current username as well. 
# 				if theUsername isnt username 
# 					userArray.push(theUsername)
		
		#swap so the app user is always first listing always.
		
		didASwap = false
		for allTheUsers, index in userArray
			if allTheUsers is username
				[userArray[index], userArray[0]] = [userArray[0], userArray[index]]
				didASwap = true
		if not didASwap 
		#this means we never found our own name, 
		# which is probably because the database wasn't updated when we first called its user list
			userArray.unshift(username)
			
		# Variables
		
		
		
		columns = userArray.length
		gutter = 0
		
		
		if userArray.length is 0 
			scrollEmptyStateLabel.animate("alone")
		else 
			scrollEmptyStateLabel.animate("connected")
		
		
		# Loop to create row layers
		for index in [0...columns]

			cell = new Layer
				width:  cellSize
				height: cellSize
				x: index * (cellSize + gutter)
				parent: scroll.content
				backgroundColor: "#4C545E"
				clip: false
			
			
			# todo code to change daylight / sunglight cell brightness
# 			testView = new Layer
# 				width: 64
# 				height: 64
# 				backgroundColor: '#333333'
# 				clip: true
# 				visible: false
# 				
# 			now = new Date()
# 			timeString = now.toTimeString()
# 			
# 			localTimeLabel = new TextLayer
# 				parent: testView
# 				width: parent.width
# 				height: parent.height
# 				text: timeString
# 				fontSize: 9
# 				fontWeight: 800
# 				color: 'white'
# 				textAlign: 'center'
# 				y: Align.center
# 				x: Align.center()
				
				
			
			midnightBlue = new Color ('#1B0165')
			middayBlue = new Color ('#0F96E9')
			
			convertToSunlightFactor= (theDate) ->
				# take 24 hour clock and make rough 0..1 for brightness
				if not theDate?
					myHours = 1
					myMinutes = 0
				
				else
					myHours = theDate.getHours() 
					myMinutes = theDate.getMinutes()
			
				
				dayFactor = myHours 
				dayFactor = (myHours + (myMinutes / 60 ))/ 24
				if dayFactor < 0.5 then sunlightFactor = dayFactor * 2
				else sunlightFactor = 1 - (2 * (dayFactor - 0.5))
				return sunlightFactor
				



			
			# this makes name into initials
			tempUserName = userArray[index]
			myArray = tempUserName.split " "
			
			userInitials = myArray[0].charAt(0) 
			if myArray[1]
				userInitials += myArray[1].charAt(0)
			
			
			
			userInitials = userArray[index]
			cell.name = userInitials
			cellLabel = new TextLayer
				parent: cell
				name: userInitials + ' label'
				x: Align.center()
				y: 0
				text:  (userInitials.replace(/\s/g, '\n'))
				textAlign: 'center'
				fontWeight: 600
				fontSize: 9
				letterSpacing: 1
				color: 'white'
				padding: 4
			
			#tofix
			try cell.backgroundColor = colorFromInertia(userInitials, (lastUserWorkInertiaLevel[userInitials]))
			if cell.backgroundColor.toHexString() is "#000000" 
				cell.backgroundColor = "#4C545E"
			
			if userArray[index] is username
				cellLabel.color = '#ffffff'
				
			cellBadge  = new TextLayer
				parent: cell
				text: ''
				fontSize: 12
				y: Align.bottom(-8)
				x:8 
				opacity: 1
				backgroundColor: 'transparent'
				

				
				

showUpdateAvailableBanner = () ->
	buildOverlay = new Layer
		height: Screen.height
		width: Screen.width

	
	textOverlay = new Layer
		parent: buildOverlay
		backgroundColor: '#000000'
		opacity: 0.8
		width: buildOverlay.width
		height: buildOverlay.height
		
	text = new TextLayer
		parent: buildOverlay
		fontSize: 13
		fontWeight: 600
		color: 'white'
		text: "✨Meow! I smell a fresher version… click here now!"
		padding: 20
		textAlign: 'center'
		x: Align.center
		y: Align.center


	buildOverlay.onClick (event, layer) ->
		`window.open("https://www.evernote.com/l/AAF3kITp759C2p4zTphJt6qGpjCrS5r3msQ");`
		buildOverlay.visible = false
	
	

#### Loops


# Motivation Overlay Setup
motivationOverlay = new Layer
	parent: teamDashboardScreen
	width: Screen.width
	height: Screen.height
	backgroundColor: '#D1C300'
	opacity: 0


	
	
motivationOverlay.states.appear = 
	midX: Screen.midX
	midY: Screen.midY
	opacity: 0
	rotation: 0
# 	animationOptions:
# 		time: 0
# 		curve: Spring(tension: 100, friction: 25)

#motivationOverlay.animate('appear')

segmentBlending = 'screen'
segmentOpacity =1
segmentFile = 'images/sunburst-yellow.png'

segments1 = new Layer
	parent: motivationOverlay
	image: segmentFile
	x: Align.center
	y: Align.center
	width: Screen.width * 1.5
	height: Screen.width * 1.5
	blending: segmentBlending
	opacity: segmentOpacity

rotate1 = new Animation segments1,
	rotation: 86
	options:
		time: 6
		curve: 'linear'

rotate1.start()

segments2 = new Layer
	parent: motivationOverlay
	image: segmentFile
	x: Align.center
	y: Align.center
	width: Screen.width * 1.5
	height: Screen.width * 1.5
	rotation: 90
	blending: segmentBlending
	opacity: segmentOpacity
	
rotate2 = new Animation segments2,
	rotation: 120
	options:
		time: 4
		curve: 'linear'
rotate2.start()


segments3 = new Layer
	parent: motivationOverlay
	image: segmentFile
	x: Align.center
	y: Align.center
	width: Screen.width * 1.5
	height: Screen.width * 1.5
	rotation: -90
	blending: segmentBlending
	opacity: segmentOpacity
	
	
rotate3 = new Animation segments3,
	rotation: -70
	options:
		time: 5
		curve: 'linear'
rotate3.start()


motivationOverlayText = new TextLayer
	text: '🏆'
	parent: motivationOverlay
	padding: 40
	textAlign: 'center'
	fontSize: 100
	fontWeight: 800
	y: - 200
	x: Align.center()
	backgroundColor: 'transparent'
	
keyDropAnimation = new Animation motivationOverlayText,
	y: Align.center()
	
	options:
		curve: Spring





checkAppVersion = () ->
	#here's where we check the database for updates
	if firebaseStatus is 'connected'
		demoDB.get "/latestAppVersion", (theEvent) ->
			if theEvent?
				if theEvent > appVersion
					showUpdateAvailableBanner?()
					
				
	# 		if then







# update the user with the last known time

if sandbox
	Utils.interval 5, ->
		if firebaseStatus is 'connected'
			writeUserStatusEvent(username)
			writeLastUpdatedEvent?()
else 
	Utils.interval 15, ->
		if firebaseStatus is 'connected'
			writeUserStatusEvent(username)
			writeLastUpdatedEvent?()
			
			
			userListKey = "/users/"
			demoDB.get userListKey, (theUsers) ->
				updateUserWorkInertia(theUsers)


serverReady = () ->
	try updateUserList()
	checkAppVersion?()
	
isFresh = (someTime) ->
	# if the time handed over is more than 30s old
	if (Date.now() - someTime ) > 30000
		return false
	else 
		return true

Utils.interval 86400, ->
	serverReady?()
	
demoDB.onChange "/users", (status) ->
	updateUserList?()
	
	
	
	
	
	
# local storage test 	
# getStorage = (key) ->
# 	if (!localStorage.getItem(key)) 
# 	else return localStorage.getItem(key)
# 
# 
# setStorage = (key, value) ->
# 	localStorage.setItem(key, value)
# 
# 
# 
# testArray = ['thingo', 'other thingo']
# 
# testObject = 
# 	myThing : 1
# 	myBetterThing: 42
# 	
# theKey = 'tabbyThing'
# 
# # setStorage(theKey, JSON.stringify(testObject))
# theObject = JSON.parse(getStorage('tabbyThing'))


Utils.interval 2, ->
	if !cocoaBridgeIsUp
		if Math.random(1) > 0.2
			@updateMouseX(Math.random(1),0)
		else 
			@updateMouseX(1,1)
if sandbox
	sandBoxNote = new TextLayer
		text: 'SANDBOX'
		fontSize: 9
		fontWeight: 800
		color: 'black'
		padding: 2







# constant to define the max number of confetti on screen
NUM_CONFETTI = 128
# possible colors
COLORS = [[85,71,106], [174,61,99], [219,56,83], [244,92,68], [248,182,70]]
# mmm pi
PI_2 = 2*Math.PI

# make a holder for the confetti
confettiLayer = new Layer width: Screen.width, height: Screen.height, backgroundColor: "transparent"

# stick a canvas element in it
confettiLayer._element.innerHTML = "<canvas id='world'></canvas>"

# register the canvas with a variable
canvas = document.getElementById "world"
context = canvas.getContext "2d"

#set its height and width
window.w = canvas.width = confettiLayer.width
window.h = canvas.height = confettiLayer.height

# make it resize when the screen resizes
resizeWindow = ->
	window.w = canvas.width = confettiLayer.width
	window.h = canvas.height = confettiLayer.height

window.addEventListener 'resize', resizeWindow, false

# Utils.delay 1, -> resizeWindow 0

# helper function to draw a circle to a canvas
drawCircle = (x,y,r,style) ->
	context.beginPath()
	context.arc(x,y,r,0,PI_2,false)
	context.fillStyle = style
	context.fill()

xpos = 0.5

# this is what makes the confetti follow the mouse
document.onmousemove = (e) ->
	xpos = e.pageX/w

# this is the thing that makes the confettis
class Confetti
	# this builds a confetti
	constructor: ->
		@style = COLORS[~~Utils.randomNumber(0,5)]
		@rgb = "rgba(#{@style[0]},#{@style[1]},#{@style[2]}"
		@r = ~~Utils.randomNumber(2,4)
		@r2 = 2*@r
		@replace()
	# this positions the confetti
	replace: ->
		@opacity = 0
		@dop = 0.03*Utils.randomNumber(1,4)
		@x = Utils.randomNumber(-@r2,w-@r2)
		@y = Utils.randomNumber(-20,h-@r2)
		@xmax = w-@r
		@ymax = h-@r
		@vx = Utils.randomNumber(0,2)+8*xpos-5
		@vy = 0.7*@r+Utils.randomNumber(-1,1)
	# this draws the confetti
	draw: ->
		@x += @vx
		@y += @vy
		@opacity += @dop
		if @opacity > 1
			@opacity = 1
			@dop *= -1
		@replace() if @opacity < 0 or @y > @ymax
		if !(0 < @x < @xmax)
			@x = (@x + @xmax) % @xmax
		drawCircle(~~@x,~~@y,@r,"#{@rgb},#{@opacity})")

# this makes an array full of constructed confetti from above
confetti = (new Confetti for i in [1..NUM_CONFETTI])

# this kicks off an animation loop to make the confetti move
# theres a way to replace this with the framer loop that would
# probably make it a bit more performant but i cant
# remember how
window.step = ->
	if !shouldStop 
		requestAnimationFrame(step)
		context.clearRect(0,0,w,h)
		c.draw() for c in confetti

# this starts the first loop
Utils.delay .1, -> 
	step()
	

	
confettiStart = () ->
	confettiLayer.visible = true
	shouldStop = false
	step()
confettiStop = () ->
	shouldStop = true
	confettiLayer.visible = false
		

	


configTeam = () ->
	#todo if user has no teams, then create a /teamMemberships and in it add 
	# /tabby which has property of /active = true and /description which is 'A public channel for all '




forceFlowUpdate()
