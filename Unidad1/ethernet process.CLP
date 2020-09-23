(defrule one
(LAN device listens)
(sense carrier signal)
=>
(assert (no carrier signal))
(printout t "rule one" crlf))

(defrule two
 (no carrier signal)
 =>
(assert (begin transmitting))
(printout t "rule two" crlf))

(defrule three
(begin transmitting)
=>
(assert (matches the carrier signal to the output))
(printout t "rule three" crlf))

(defrule four
 (matches the carrier signal to the output)
=> 
 (assert (if there is discrepancy))
 (assert (collision))
 (printout t "rule four" crlf))

(defrule five
 (if there is discrepancy)
 (collision)
=>
(assert (jamming signal))
(assert (wait a random amount of time))
(printout t "rule five" crlf))

(defrule six
 (jamming signal)
 (wait a random amount of time)
=>
 (assert (start transmitting again))
(printout t "end of the CSMA/CD process" crlf))