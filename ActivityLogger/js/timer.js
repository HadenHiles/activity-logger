var intervalId;
$(document).ready(function () {
    var timeout = 1000;
    var timer;

    //var timerDisplay = $('#ContentPlaceHolder1_txtTimeDisplay');
    var timerDisplay = txtTimeDisplayAsp;
    var defaultTime = timerDisplay.attr('value');
    var startBtn = $('#start');
    var resetBtn = $('#reset');

    //Start or stop the timer
    var currentTime;
    var ongoingSeconds = 1;
    var seconds = 0;
    var minutes = 0;
    var hours = 0;
    startBtn.click(function (e) {
        e.preventDefault();
        var state = e.target.attributes.active.value;
        if (state == 'false') {
            e.target.attributes.active.value = 'true';
            startBtn.removeClass('btn-success').addClass('btn-danger');
            startBtn.empty();
            startBtn.text("Stop");

            var interval = 1000;
            intervalId = window.setInterval(function () {
                currentTime = parseFloat(timerDisplay.val());
                if (ongoingSeconds % 3600 == 0) {
                    hours++;
                    minutes = 0;
                } else if (ongoingSeconds % 60 == 0) {
                    minutes++;
                    seconds = 0;
                } else if (ongoingSeconds % 1 == 0) {
                    seconds++;
                }
                ongoingSeconds++;
                var newTime = zeroPad(hours, 2).toString() + ":" + zeroPad(minutes, 2).toString() + ":" + zeroPad(seconds, 2).toString();
                timerDisplay.val(newTime);
                timerDisplay.attr('value', newTime);
                lblTimeHidden.val(newTime);
                lblTimeHidden.attr('value', newTime);
            }, interval);
        } else {
            e.target.attributes.active.value = 'false';
            startBtn.removeClass('btn-danger').addClass('btn-success');
            startBtn.empty();
            startBtn.text("Start");
            window.clearInterval(intervalId);
        }
    });

    //Reset the timer
    resetBtn.click(function (e) {
        e.preventDefault();
        currentTime;
        ongoingSeconds = 1;
        seconds = 0;
        minutes = 0;
        hours = 0;
        reset(startBtn, timerDisplay);
    });
});

function reset(startBtn, timerDisplay) {
    startBtn.removeClass('btn-danger').addClass('btn-success');
    startBtn.empty();
    startBtn.text("Start");
    timerDisplay.empty();
    timerDisplay.val("00:00:00");
    window.clearInterval(intervalId);
}

function zeroPad(num, places) {
    var zero = places - num.toString().length + 1;
    return Array(+(zero > 0 && zero)).join("0") + num;
}