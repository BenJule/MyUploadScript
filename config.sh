#!/bin/bash
alias curl='noglob curl'
shopt -u nullglob
#unsetopt nomatch

MEDIA_DIR='/media/ext-hdd/plex/Clips/Ben/'

TUMBLR_STATE='\"draft\"'

# Frankreich Clips
DPG_EMOJI=🇫🇷
DPG_DIR='Frankreich Clips'
TWITTER_DPG_HTAGS='#france #francetourism #frankreich #europe #visitfrance #greatshots #travel #francetravel #paris'
TUMBLR_DPG_HTAGS='\"france\", \"francetourism\", \"frankreich\", \"europe\", \"visitfrance\", \"greatshots\", \"travel\", \"francetravel\", \"paris\"'

# Deutschland Clips
DPEEG_EMOJI=🇩🇪
DPEEG_DIR='Deutschland Clips'
TWITTER_DPEEG_HTAGS='#germany #germanytourism #deutschland #europe #visitgermany #greatshots #travel #germanytravel #berlin'
TUMBLR_DPEEG_HTAGS='\"germany\", \"germanytourism\", \"deutschland\", \"europe\", \"visitgermany\", \"greatshots\", \"travel\", \"germanytravel\", \"berlin\"'

# Schweiz Clips
PPG_EMOJI=🇨🇭
PPG_DIR='Schweiz Clips'
TWITTER_PPG_HTAGS='#swiss #swisstourism #schweiz #europe #visitswiss #greatshots #travel #germanyswiss #basel'
TUMBLR_PPG_HTAGS='\"swiss\", \"swisstourism\", \"schweiz\", \"europe\", \"visitswiss\", \"greatshots\", \"travel\", \"swisstravel\", \"basel\"'