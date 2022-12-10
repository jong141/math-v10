import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_math_fork/flutter_math.dart';


const equations = [
  ['Snell\'s Law Equation:',
    r'\frac {\sin\theta_t}{\sin\theta_i} = \sqrt \frac{\mu_1\varepsilon_1}{\mu_2\varepsilon_2}'
  ],

  ['Brewster Angle Equation:',
    r'\tan\theta_{B\parallel} = \sqrt \frac{\varepsilon_2}{\varepsilon_1}'
  ],

  ['Critical Angle Equation:',
    r'\sin\theta_c = \sqrt \frac{\varepsilon_2}{\varepsilon_1}'
  ],

  [
    'Frensnel Equation - Reflection Perpendicular Polarization:',
    r'\varGamma{_\perp} = \frac {\eta_2\cos(\theta_i)-\eta_1\cos(\theta_t)}{\eta_2\cos(\theta_i)+\eta_1\cos(\theta_t)}'
  ],

  [
    'Frensnel Equation - Transmission Perpendicular Polarization:',
    r'\tau{_\perp} = \frac {2\eta_2\cos(\theta_i)}{\eta_2\cos(\theta_i)+\eta_1\cos(\theta_t)}'
  ],

  [
    'Frensnel Equation - Reflection Parallel Polarization:',
    r'\varGamma{_{//}} = \frac {\eta_2\cos(\theta_t)-\eta_1\cos(\theta_i)}{\eta_2\cos(\theta_t)+\eta_1\cos(\theta_i)}'
  ],

  [
    'Frensnel Equation - Transmission Parallel Polarization:',
    r'\tau{_{//}} = \frac {2\eta_2\cos(\theta_i)}{\eta_2\cos(\theta_t)+\eta_1\cos(\theta_i)}'
  ],

];

class EquationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
    child: Container(
      constraints: BoxConstraints(maxWidth: 800),
      child: ListView(
        children: equations
            .map((entry) => Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(entry[0]),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
                  child: SelectableMath.tex(
                    entry[1],
                    textStyle: TextStyle(fontSize: 22),
                  ),
                )
              ],
            ),
          ),
        ))
            .toList(),
      ),
    ),
  );
}