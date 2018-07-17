exports.getClass = function () {
    return M.Tooltip;
};

exports.extraInitImpl = function (options, tooltip) {
    if (!options.exitOnClick) {
        return;
    }
    tooltip.el.addEventListener('mousedown', function () {
        // An entering tooltip is also open.
        if (!tooltip.isOpen) {
            return;
        }

        // Update state and clear entering animation.
        tooltip.close();

        // Clear exiting animation.
        clearTimeout(tooltip._exitDelayTimeout);

        // Play exiting animation immediately.
        tooltip._animateOut();
    });
};
