exports.toastImpl = function (options) {
    return function (_, onSuccess) {
        var successfullyCanceled = false;

        var optionsWithCallback = Object.assign({}, options, {
            completeCallback: function () {
                if (successfullyCanceled) {
                    return;
                }
                onSuccess();
            },
        });
        var toast = M.toast(optionsWithCallback);

        return function (_, onCancelerError, onCancelerSuccess) {
            if (toast.timeRemaining > 0 && !toast.wasSwiped) {
                successfullyCanceled = true;

                toast.dismiss();

                onCancelerSuccess();
            }
            onCancelerError(new TypeError("Toast has been dissmissed"));
        };
    };
};

exports.getClass = function () {
    return M.Toast;
};

exports.dismissAllToasts = function () {
    return M.Toast.dismissAll();
};
