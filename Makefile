all:
	go install ./epaxos-master
	go install ./epaxos-server
	go install ./epaxos-client

run:
	epaxos-master &
	sleep 1; epaxos-server -e -port 7070 &
	sleep 1; epaxos-server -e -port 7071 &
	sleep 1; epaxos-server -e -port 7072 &
	sleep 1; epaxos-client -e

clean:
	pkill -9 epaxos-master epaxos-server epaxos-client


