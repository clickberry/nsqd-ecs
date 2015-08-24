FROM nsqio/nsqd

ENTRYPOINT ["/gopath/src/github.com/bitly/nsq/apps/nsqd/nsqd", "--data-path=/data", "--broadcast-address=bus1.qa.clbr.ws"]
