describe 'Printable test', ->
    print = require '../lib/index'

    it 'non-printable chars should be lowercased', ->
        print('Head \x00\t\v\u038b Tail').should.equal 'Head \\x00\\t\\v\\u038b Tail'
        print('Head \x00\t\v\u038b Tail', uppercase: false).should.equal 'Head \\x00\\t\\v\\u038b Tail'

    it 'non-printable chars should be uppercased', ->
        print('Head \x00\t\v\u038b Tail', uppercase: true).should.equal 'Head \\X00\\t\\v\\U038B Tail'
