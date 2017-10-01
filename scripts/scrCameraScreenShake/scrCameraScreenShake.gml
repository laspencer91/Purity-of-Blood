var amount = argument[0];

oCamera.hShake     = amount;
oCamera.vShake     = amount;
oCamera.shakeRate  = 15 * choose(1, -1);
oCamera.decayRate  = .85;
oCamera.shakeCount = 0;
oCamera.screenShake = true;

var start_time = current_time;
while (current_time < start_time + 30)
{}
