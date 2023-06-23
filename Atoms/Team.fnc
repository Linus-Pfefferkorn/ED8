do(
 registerfunction(
  [CallOperators],
  [Various],
  2,
  23,
  [if(
    atomexists(p(1)),
    if(
     p(2)>0,
     if(
      p(2)>nroc(p(1)),
      if(
       not(confirm(concat(name(i),[ selected too many operators at ],name(c),[ and operators might never be released again. Continue simulation anyway?]))),
       stop
      ),
      do(
       sddb([t-opnumber],p(2),c),
       sddb([t-messagemode],1,p(1)),
       createatom(baseclass,p(1),concat([Call by ],name(c))),
       setchannels(3,0,last(p(1))),
       connect(0,c,1,last(p(1))),
       if(atomexists(first(c)),connect(0,first(c),3,last(p(1))),connect(0,c,3,last(p(1)))),
       sddb([t-calltime],time,last(p(1))),
       sddb([t-opnumber],p(2),last(p(1))),
       sddb([t-priority],p(3),last(p(1))),
       sddb([t-color],color(c),last(p(1))),
       set(color(c),colorred),
       repeat(
        20,
        if(
         stringlength(p(count+3))>0,
         do(
          settable(nrows(last(p(1)))+1,1,last(p(1))),
          setcell(nrows(last(p(1))),1,p(count+3))
         )
        )
       ),
       repeat(
        p(2)-nrows(last(p(1))),
        do(
         settable(nrows(last(p(1)))+1,1,last(p(1))),
         setcell(nrows(last(p(1))),1,[Anyone])
        )
       ),
       sendmessagedirect(p(1),[],c)
      )
     )
    ),
    do(
     displaytracer,
     trace(concat(name(c),[: incorrect team reference in statement calloperators.]))
    )
  )],
  [Calls e2 operators from team e1 to the current atom with priority e3. The current atom is set on hold and the operators are assigned to the first atom inside the current atom. If operator names e4 to e23 are not specified, then any operator can be assigned.],
  [CallOperators(in(2, c), 2, 1, [John], [James], [Jack])],
  true,
  [Team.fnc]
 ),
 registerfunction(
  [FreeOperators],
  [Various],
  2,
  2,
  [if(
    atomexists(p(1)),
    if(
     atomexists(p(2)),
     do(
      sddb([t-messagemode],2,p(1)),
      sendmessagedirect(p(1),[],p(2))
     ),
     do(
      displaytracer,
      trace(concat(name(c),[: incorrect job reference in statement freeoperators.]))
     )
    ),
    do(
     displaytracer,
     trace(concat(name(c),[: incorrect team reference in statement freeoperators.]))
    )
  )],
  [Releases all operators of team e1 that have been assigned to atom e2 (e2 is typically 'i' if this statement is used at an exittrigger)],
  [FreeOperators(in(2, c), i)],
  true,
  [Team.fnc]
 ),
 registereditfield(
  [t-atomreference],
  [Atom reference],
  [textatt(curfield)],
  [setexpratt(curfield,&)],
  fieldlistboxsyntax(
   4,
   [in(2,c)/out(2,c)/atombyname([AtomName],model)/if([?],[?],[?])]
  ),
  [Select a 4DScript expression to reference an atom.]
 ),
 registerfunction(
  [t-sortoperatortasks],
  [Transport],
  2,
  2,
  [do(
    {// Task that have already been assigned to operators must rank first to avoid deadlocks //}
    sddb([t-count],0,c),
    repeat(
     content(c),
     do(
      setcs(rank(count,c)),
      if(
       nrows(cs)<>ddb([t-opnumber],cs),
       do(
        sddb([t-count],ddb([t-count],c)+1,c),
        setrank(ddb([t-count],c),cs)
       )
      )
     )
    ),
    {// The remaining tasks can now be sorted //}
    repeat(
     -(content(p(2)),1),
     repeat(
      -(content(p(2)),1),
      do(
       setcs(rank(count,p(2))),
       if(
        and(
         nrows(cs)=ddb([t-opnumber],cs),
         p(1)
        ),
        setrank(count,next(cs))
       )
      )
     )
    )
   )]
 ),
 registereditfield(
  [t-sortoperatortasks],
  [Sort tasks by],
  [textatt(3)],
  [setexpratt(3,&)],
  fieldsmartlist(
   8,
   concat(
    [t-sortoperatortasks(>(ddb([t-priority],next(cs)),ddb([t-priority],cs)),c)|1. Highest priority --> operator calls with a high priority parameter are dispatched first./],
    [t-sortoperatortasks(<(ddb([t-priority],next(cs)),ddb([t-priority],cs)),c)|2. Lowest priority --> operator calls with a low priority parameter are dispatched first./],
    [[no sort required]|3. FIFO --> first in first out./],
    [t-sortoperatortasks(>(entrytime(next(cs)),entrytime(cs)),c)|4. LIFO --> last in first out./],
    [t-sortoperatortasks(<(att(2,next(cs)),att(2,cs)),c)|5. IC minimum --> lowest input channel of dispatcher first./],
    [t-sortoperatortasks(>(att(2,next(cs)),att(2,cs)),c)|6. IC Maximum --> highest input channel of dispatcher first./],
    [t-sortoperatortasks(<(ddb([~1],next(cs)),ddb([~1],cs)),c)|7. Label minimum --> lowest value of label ~LabelName~ first./],

    [t-sortoperatortasks(>(ddb([~1],next(cs)),ddb([~1],cs)),c)|8. Label maximum --> highest value of label ~LabelName~ first.]
   )
  )
 )
);