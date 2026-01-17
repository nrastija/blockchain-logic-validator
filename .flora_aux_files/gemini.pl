
:-(compiler_options([xpp_on,canonical])).

/********** Tabling and Trailer Control Variables ************/

#define EQUALITYnone
#define INHERITANCEflogic
#define TABLINGreactive
#define TABLINGvariant
#define CUSTOMnone

#define FLORA_INCREMENTAL_TABLING 

/************************************************************************
  file: headerinc/flrheader_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader.flh"
#include "flora_porting.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrheader_prog_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader_prog.flh"

/***********************************************************************/

#define FLORA_COMPILATION_ID 7

/************************************************************************
  file: headerinc/flrheader2_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
  It has files that must be included in the header and typically
  contain some Prolog statements. Such files cannot appear
  in flrheader.flh because flrheader.flh is included in various restricted
  contexts where Prolog statements are not allowed.

  NOT included in ADDED files (compiled for addition) -- only in LOADED
  ones and in trailers/patch
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

%% flora_tabling_methods is included here to affect preprocessing of
%% flrtable/flrhilogtable.flh dynamically
#include "flora_tabling_methods.flh"

/* note: inside flrtable.flh there are checks for FLORA_NONTABLED_DATA_MODULE
   that exclude tabling non-signature molecules
*/
#ifndef FLORA_NONTABLED_MODULE
#include "flrtable.flh"
#endif

/* if normal tabled module, then table hilog */
#if !defined(FLORA_NONTABLED_DATA_MODULE) && !defined(FLORA_NONTABLED_MODULE)
#include "flrhilogtable.flh"
#endif

#include "flrtable_always.flh"

#include "flrauxtables.flh"

%% include list of tabled predicates
#mode save
#mode nocomment "%"
#if defined(FLORA_FLT_FILENAME)
#include FLORA_FLT_FILENAME
#endif
#mode restore

/***********************************************************************/

/************************************************************************
  file: headerinc/flrdyna_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

#include "flrdyndeclare.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrindex_P_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrindex_P.flh"

/***********************************************************************/

#mode save
#mode nocomment "%"
#define FLORA_THIS_FILENAME  'gemini.flr'
#mode restore
/************************************************************************
  file: headerinc/flrdefinition_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrdefinition.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrtrailerregistry_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrtrailerregistry.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrrefreshtable_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrrefreshtable.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrdynamic_connectors_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrdynamic_connectors.flh"

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrimportedcalls_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

%% Loads the file with all the import statements for predicates
%% that must be known everywhere

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBIMPORTEDCALLS))).

/***********************************************************************/

/************************************************************************
  file: headerinc/flrpatch_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrexportcheck.flh"
#include "flrpatch.flh"
/***********************************************************************/

/************************************************************************
  file: headerinc/flropposes_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flropposes.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrhead_dispatch_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrhead_dispatch.flh"

/***********************************************************************/

/************************************************************************
  file: syslibinc/flranswer_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBANSWER))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flraggcount_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCOUNT))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrclause_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCLAUSE))).

/***********************************************************************/

/************************************************************************
  file: libinc/flrio_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(':'(flrlibman,flora_load_system_module(FLSYSMODIO))).

/***********************************************************************/

 
#if !defined(FLORA_FDB_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FDB_FILENAME  'gemini.fdb'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FDB_FILENAME,FLORA_THIS_MODULE_NAME,'fdb'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FDB_FILENAME,FLORA_THIS_FDB_STORAGE))).
#endif

 
#if !defined(FLORA_FLM_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLM_FILENAME  'gemini.flm'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(gemini,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'gemini.fld'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLD_FILENAME,FLORA_THIS_MODULE_NAME,'fld'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FLD_FILENAME,FLORA_THIS_FLD_STORAGE))).
#endif

 
#if !defined(FLORA_FLS_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS_FILENAME  'gemini.fls'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS_FILENAME,FLORA_THIS_MODULE_NAME,'fls'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rules %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:-(FLORA_THIS_WORKSPACE(static^tblflapply)(positive_amount,__Tx,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_flora''rule_enabled'(4,'gemini.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__A,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4))),fllibdelayedliteral(>,'gemini.flr',58,[__A,0])),fllibexecute_delayed_calls([__A,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(different_addresses,__Tx,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_flora''rule_enabled'(6,'gemini.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,recipient_address,__R,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6))),fllibdelayedliteral('!==','gemini.flr',62,[__S,__R])),fllibexecute_delayed_calls([__R,__S,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','('_$_$_flora''rule_enabled'(8,'gemini.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__A,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__S,balance,__B,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,8)),FLORA_THIS_WORKSPACE(d^isa)(__S,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8))),fllibdelayedliteral(>=,'gemini.flr',67,[__B,__A]))),fllibexecute_delayed_calls([__A,__B,__S,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_signature,__Tx,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','('_$_$_flora''rule_enabled'(10,'gemini.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__SenderAddr,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,digital_signature,__Sig,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__SenderAddr,id,__SenderId,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,10)),FLORA_THIS_WORKSPACE(d^isa)(__SenderAddr,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10))),','(atom_concat(sig_,__SenderId,__Prefix),sub_atom(__Sig,0,__Len,__Aft,__Prefix)))),fllibexecute_delayed_calls([__Aft,__Len,__Prefix,__SenderAddr,__SenderId,__Sig,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','('_$_$_flora''rule_enabled'(12,'gemini.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,12)),FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,12)))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(network_health,__Total,__Valid,__Invalid,__Score,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','('_$_$_flora''rule_enabled'(14,'gemini.flr',FLORA_THIS_MODULE_NAME),','(','(fllibcount(__newdontcarevar3,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar3,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),fllibexecute_delayed_calls([__newdontcarevar3],[])),__newvar4),=(__Total,__newvar4)),','(','(fllibcount(__newdontcarevar6,[],[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__newdontcarevar6,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14)),fllibexecute_delayed_calls([__newdontcarevar6],[])),__newvar7),=(__Valid,__newvar7)),','(fllibdelayedliteral('\\is','gemini.flr',94,[__Invalid,-(__Total,__Valid)]),FLORA_THIS_WORKSPACE(d^tblflapply)(calculate_score,__Total,__Valid,__Score,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,14))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(calculate_score,__Total,__Valid,__Score,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','('_$_$_flora''rule_enabled'(16,'gemini.flr',FLORA_THIS_MODULE_NAME),','(fllibdelayedliteral(>,'gemini.flr',100,[__Total,0]),','(!,fllibdelayedliteral('\\is','gemini.flr',102,[__Score,/(*(__Valid,100.0),__Total)]))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(data_stats,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','('_$_$_flora''rule_enabled'(18,'gemini.flr',FLORA_THIS_MODULE_NAME),','(','(','(fllibcount(__newdontcarevar3,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar3,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),fllibexecute_delayed_calls([__newdontcarevar3],[])),__newvar4),=(__C1,__newvar4)),','(','(fllibcount(__newdontcarevar6,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar6,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,18)),fllibexecute_delayed_calls([__newdontcarevar6],[])),__newvar7),=(__C2,__newvar7)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Adrese u bazi: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,18)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__C1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,18)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,18)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Transakcije u bazi: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,18)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__C2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,18)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,18))))))))),fllibexecute_delayed_calls([__C1,__C2],[])))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'gemini.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,11,FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__A,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4))),fllibdelayedliteral(>,'gemini.flr',58,[__A,0])),null,'_$_$_flora''rule_enabled'(4,'gemini.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__A,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(6,'gemini.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,12,FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,recipient_address,__R,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6))),fllibdelayedliteral('!==','gemini.flr',62,[__S,__R])),null,'_$_$_flora''rule_enabled'(6,'gemini.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__R,__S,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(8,'gemini.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,13,FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__A,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__S,balance,__B,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,8)),FLORA_THIS_WORKSPACE(d^isa)(__S,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8))),fllibdelayedliteral(>=,'gemini.flr',67,[__B,__A]))),null,'_$_$_flora''rule_enabled'(8,'gemini.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__A,__B,__S,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(10,'gemini.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,14,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__SenderAddr,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,digital_signature,__Sig,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__SenderAddr,id,__SenderId,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,10)),FLORA_THIS_WORKSPACE(d^isa)(__SenderAddr,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10))),','(atom_concat(sig_,__SenderId,__Prefix),sub_atom(__Sig,0,__Len,__Aft,__Prefix)))),null,'_$_$_flora''rule_enabled'(10,'gemini.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Aft,__Len,__Prefix,__SenderAddr,__SenderId,__Sig,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(12,'gemini.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,15,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,12)),FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,12)))))),null,'_$_$_flora''rule_enabled'(12,'gemini.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(14,'gemini.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,16,FLORA_THIS_WORKSPACE(d^tblflapply)(network_health,__Total,__Valid,__Invalid,__Score,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','(','(fllibcount(__newdontcarevar3,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar3,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),fllibexecute_delayed_calls([__newdontcarevar3],[])),__newvar4),=(__Total,__newvar4)),','(','(fllibcount(__newdontcarevar6,[],[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__newdontcarevar6,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14)),fllibexecute_delayed_calls([__newdontcarevar6],[])),__newvar7),=(__Valid,__newvar7)),','(fllibdelayedliteral('\\is','gemini.flr',94,[__Invalid,-(__Total,__Valid)]),FLORA_THIS_WORKSPACE(d^tblflapply)(calculate_score,__Total,__Valid,__Score,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,14))))),null,'_$_$_flora''rule_enabled'(14,'gemini.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(16,'gemini.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,17,FLORA_THIS_WORKSPACE(d^tblflapply)(calculate_score,__Total,__Valid,__Score,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','(fllibdelayedliteral(>,'gemini.flr',100,[__Total,0]),','(!,fllibdelayedliteral('\\is','gemini.flr',102,[__Score,/(*(__Valid,100.0),__Total)]))),null,'_$_$_flora''rule_enabled'(16,'gemini.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(18,'gemini.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,19,FLORA_THIS_WORKSPACE(d^tblflapply)(data_stats,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','(','(fllibcount(__newdontcarevar3,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar3,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),fllibexecute_delayed_calls([__newdontcarevar3],[])),__newvar4),=(__C1,__newvar4)),','(','(fllibcount(__newdontcarevar6,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar6,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,18)),fllibexecute_delayed_calls([__newdontcarevar6],[])),__newvar7),=(__C2,__newvar7)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Adrese u bazi: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,18)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__C1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,18)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,18)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Transakcije u bazi: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,18)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__C2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,18)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,18))))))))),null,'_$_$_flora''rule_enabled'(18,'gemini.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__C1,__C2],[]),true)).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'>>> SUSTAV UCITAN BEZ GRESKE <<<','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[])).

 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS2_FILENAME  'gemini.fls2'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS2_FILENAME,FLORA_THIS_MODULE_NAME,'fls2'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS2_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif

/************************************************************************
  file: headerinc/flrtrailer_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrtrailer.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrpreddef_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrpreddef.flh"

/***********************************************************************/

