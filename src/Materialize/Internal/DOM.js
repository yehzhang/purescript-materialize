exports.gOpenImpl = function (i) {
    return i.open();
};

exports.gCloseImpl = function (i) {
    return i.close();
};

exports.gDestroyImpl = function (i) {
    return i.destroy();
};

exports.gDismissImpl = function (i) {
    return i.dismiss();
};

exports.gInitImpl = function (c, element, options) {
    return c.init(element, options);
};
