# Switchboard 

Switchboard is both a toolkit for assembling XMPP clients as well as a set of
command-line tools for interacting with XMPP servers.

## Docs

* [switchboard : XMPP :: curl :
    HTTP](http://mojodna.net/2009/07/16/switchboard-curl-for-xmpp.html) -
    command-line usage
* [Switchboard as a
    Framework](http://mojodna.net/2009/07/19/switchboard-as-a-framework.html)
* [Subscribing to Wordpress.com with
    Switchboard](http://mojodna.net/2009/07/21/subscribing-to-wordpress-com-with-switchboard.html)

## Mailing List

[Switchboard Google Group](http://groups.google.com/group/switchboard)

## Getting Started

Install it:

    $ sudo gem install switchboard

Install optional dependencies for additional functionality.

OAuth PubSub support:

    $ sudo gem install oauth

User Location (XEP-0080) support via Fire Eagle:

    $ sudo gem install mojodna-fire-hydrant -s http://gems.github.com

_Note: you will need to set up a PubSub subscription to your location via Fire
Eagle for this to work._

User Tune (XEP-0118) support via iTunes (on Mac OS X):

    $ sudo gem install rb-appscript

Configure it:

    $ switchboard config jid jid@example.com
    $ switchboard config password pa55word

_Settings will be stored in `$HOME/.switchboardrc`_

Run it:

    $ switchboard <command> <args>
    $ switchboard roster list
    $ switchboard roster add fireeagle.com
    $ ...

Subscribe to a node using OAuth, overriding default settings:

    $ switchboard --jid subscriber@example.com --password pa55word \
        pubsub --oauth \
        --oauth-consumer-key <consumer key> \
        --oauth-consumer-secret <consumer secret> \
        --oauth-token <token> \
        --oauth-token-secret <token secret> \
        --server fireeagle.com \
        --node "/api/0.1/user/<token>" \
        subscribe

Publish iTunes' current track using User Tune (XEP-0118):

    $ switchboard --resource switchtunes pep tune

_You can do this using a JID that is already online._
