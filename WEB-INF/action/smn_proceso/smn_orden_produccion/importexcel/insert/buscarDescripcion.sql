select
		smn_produccion.smn_orden_produccion.opr_descripcion
from
		smn_produccion.smn_orden_produccion
where
		upper(smn_produccion.smn_orden_produccion.opr_descripcion) = upper(${fld:opr_descripcion})
