all:
	go install ./epaxos-master
	go install ./epaxos-server
	go install ./epaxos-client

run:
	epaxos-master &
	epaxos-server -e -port 7070 &
	epaxos-server -e -port 7071 &
	epaxos-server -e -port 7072 &
	epaxos-client -e

clean:
	pkill -9 epaxos-master epaxos-server epaxos-client


