select
		smn_produccion.smn_formula.for_codigo
from
		smn_produccion.smn_formula
where
		smn_produccion.smn_formula.for_codigo = ${fld:for_codigo}
