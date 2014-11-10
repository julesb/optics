union () {
  difference () {
    translate ([0, 0, 20]) {
      cube ([49.49747468305833, 10, 49.49747468305833], center=true);
    }
    translate ([0, 0, 14.142135623730951]) {
      rotate (a=90.0, v=[1, 0, 0]) {
        rotate (a=45.0, v=[0, 0, 1]) {
          translate ([10, 10, 0]) {
            cube ([35.0, 35.0, 11.0], center=true);
          }
        }
      }
    }
    translate ([0, 0, 49.49747468305833]) {
      cube ([100, 100, 50], center=true);
    }
    difference () {
      translate ([-10.0, 0, 21]) {
        rotate (a=45.0, v=[0, 1, 0]) {
          rotate (a=45.0, v=[1, 0, 0]) {
            cube ([45, 12, 12], center=true);
          }
        }
      }
      translate ([50.1, 0, 0]) {
        cube ([100, 100, 100], center=true);
      }
    }
    rotate (a=180.0, v=[0, 0, 1]) {
      difference () {
        translate ([-10.0, 0, 21]) {
          rotate (a=45.0, v=[0, 1, 0]) {
            rotate (a=45.0, v=[1, 0, 0]) {
              cube ([45, 12, 12], center=true);
            }
          }
        }
        translate ([50.1, 0, 0]) {
          cube ([100, 100, 100], center=true);
        }
      }
    }
  }
  translate ([0, 0, -3]) {
    cube ([49.49747468305833, 32.99831645537222, 5], center=true);
  }
}
