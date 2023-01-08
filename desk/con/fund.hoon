/+  *zig-sys-smart
/=  lib  /con/lib/fund
=,  lib
|_  =context
++  write
  |=  act=action:sur
  ^-  (quip call diff)
  ?:  ?=(%create -.act)
    :: ?>  ?=(^ members.act)
    ::
    =/  salt  (crip (weld ~(rux at id.caller.context) (trip name.act)))
    =/  =id  (hash-data this.context this.context town.context salt)
    =/  members  (~(run in members.act) |=(a=address [a 0]))
    =/  =item
      :*  %&  id
          this.context
          this.context
          town.context
          salt
          %collective  [name.act members ~]
      ==
    `(result ~ item^~ ~ ~)
  ::
  =+  (need (scry-state fund-id.act))
  =/  fund  (husk state:sur - `this.context ~)
  ?-    -.act
      %fund
  =/  meta  (need (scry-state asset-metadata.act))
  ?>  ?=(%& -.meta)
  :: this factory contract owns the account, and can send the asset to
  :: others defined by the rules of this contract
  :: 
  =/  our-account
    (hash-data source.p.meta this.context town.context salt.p.meta)
  ?>  (~(has py members.noun.fund) id.caller.context)
  =.  members.noun.fund
    %+  ~(jab py members.noun.fund)
      id.caller.context
    |=  shares=@ud
    (add shares amount.act)
  =.  assets.noun.fund
    ?:  (~(has py assets.noun.fund) our-account)
      %+  ~(jab py assets.noun.fund)
        our-account
      |=  [contract=id metadata=id amount=@ud]
      [contract metadata (add amount amount.act)]
    %+  ~(put py assets.noun.fund)
      our-account
    [source.p.meta asset-metadata.act amount.act]
  :_  (result [[%&^fund ~] ~ ~ ~])
  :~
      :+  source.p.meta
        town.context
      :^    %take
          this.context
        amount.act
      from-account.act
  ==
  ==
++  read
  |_  =path
  ++  json
    ~
  ++  noun
    ~
  --
--