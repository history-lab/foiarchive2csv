create or replace view entity_docs_view_temp as
select e.entity_id, e.entity, e.entgroup, e.wikidata_id, 
       d.doc_id, d.corpus, d.classification, d.authored, d.title 
   from foiarchive.entities e 
        join foiarchive.entity_docs ed on e.entity_id = ed.entity_id
        join foiarchive.docs d on ed.doc_id = d.doc_id;

set statement_timeout = 0;

\copy (select * from entity_docs_view_temp) to entity-docs-foiarchive.csv with csv header

drop view entity_docs_view_temp;