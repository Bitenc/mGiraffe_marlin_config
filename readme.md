This repo contains files to update the Makeblock mGiraffe to the new Marlin Version.

Some changes have still to be made to the Marlin Sourcecode:

The following block has to be copied to line 2681 of `stepper.cpp`, within the function `stepper::init()`, before the start of the timer.

```
  SET_OUTPUT(X_MS1_PIN);  \
  SET_OUTPUT(X_MS2_PIN);  \
  SET_OUTPUT(X_MS3_PIN);  \
  SET_OUTPUT(X_RESET_PIN);  \
  SET_OUTPUT(X_SLEEP_PIN);  \
  WRITE(X_MS1_PIN,1);  \
  WRITE(X_MS2_PIN,1);  \
  WRITE(X_MS3_PIN,1);  \
  WRITE(X_RESET_PIN,1);  \
  WRITE(X_SLEEP_PIN,1);  \
  SET_OUTPUT(Y_MS1_PIN);  \
  SET_OUTPUT(Y_MS2_PIN);  \
  SET_OUTPUT(Y_MS3_PIN);  \
  SET_OUTPUT(Y_RESET_PIN);  \
  SET_OUTPUT(Y_SLEEP_PIN);  \
  WRITE(Y_MS1_PIN,1);  \
  WRITE(Y_MS2_PIN,1);  \
  WRITE(Y_MS3_PIN,1);  \
  WRITE(Y_RESET_PIN,1);  \
  WRITE(Y_SLEEP_PIN,1);  \
  SET_OUTPUT(Z_MS1_PIN);  \
  SET_OUTPUT(Z_MS2_PIN);  \
  SET_OUTPUT(Z_MS3_PIN);  \
  SET_OUTPUT(Z_RESET_PIN);  \
  SET_OUTPUT(Z_SLEEP_PIN);  \
  WRITE(Z_MS1_PIN,1);  \
  WRITE(Z_MS2_PIN,1);  \
  WRITE(Z_MS3_PIN,1);  \
  WRITE(Z_RESET_PIN,1);  \
  WRITE(Z_SLEEP_PIN,1);  \
  SET_OUTPUT(E_MS1_PIN);  \
  SET_OUTPUT(E_MS2_PIN);  \
  SET_OUTPUT(E_MS3_PIN);  \
  SET_OUTPUT(E_RESET_PIN);  \
  SET_OUTPUT(E_SLEEP_PIN);  \
  WRITE(E_MS1_PIN,1);  \
  WRITE(E_MS2_PIN,1);  \
  WRITE(E_MS3_PIN,1);  \
  WRITE(E_RESET_PIN,1);  \
  WRITE(E_SLEEP_PIN,1);  \
```

change `env:custom` to `env:mega2560` in the `#elif MB(CUSTOM)` section (line 675) of the file `pins.h`
