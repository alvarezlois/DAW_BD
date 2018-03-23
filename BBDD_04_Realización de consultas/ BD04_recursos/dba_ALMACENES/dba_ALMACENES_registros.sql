/* INSERTAMOS LOS ALMACENES*/

insert into almacenes values ('A01','Madrid','4');
insert into almacenes values ('A02','Vigo','6');
insert into almacenes values ('A03','Cangas','5');
insert into almacenes values ('A04','Portugal','4');

select all * from almacenes;

/* INSERTAMOS LAS CAJAS PARA LOS ALMACENES*/

-- cajas del almacen A01 (papeleria)
insert into cajas values ('CJA1-01','Papel', '341','A01');
insert into cajas values ('CJA1-02','DIN A4', '456','A01');
insert into cajas values ('CJA1-03','DIN A3', '382','A01');
insert into cajas values ('CJA1-04','DIN A2', '432','A01');
insert into cajas values ('CJA1-05','DIN A1', '362','A01');

-- cajas del almacen A02 (tornilleria)
insert into cajas values ('CJA2-01','Tuerca ISO-005', '2758.83','A02');
insert into cajas values ('CJA2-02','Tuerca ISO-012', '3560.25','A02');
insert into cajas values ('CJA2-03','Tuercas ISO-025','2974.24','A02');
insert into cajas values ('CJA2-04','Tornillo ISO-005', '3129.20','A02');
insert into cajas values ('CJA2-05','Tornillo ISO-012', '2098.05','A02');
insert into cajas values ('CJA2-06','Tornillo ISO-025','581.83','A02');
insert into cajas values ('CJA2-07','Arandela ISO-005', '319.20','A02');
insert into cajas values ('CJA2-08','Arandela ISO-012', '568.05','A02');
insert into cajas values ('CJA2-09','Arandela ISO-025','881.19','A02');

-- cajas del almacen A03 (Electricidad)
insert into cajas values ('CJA3-01','Bombilla NUT-27 9W', '9558.05','A03');
insert into cajas values ('CJA3-02','Bombilla NUT-27 11W', '7654.05','A03');
insert into cajas values ('CJA3-03','Bombilla NUT-27 13W', '8041.87','A03');
insert into cajas values ('CJA3-04','Bombilla NUT-27 17W', '4591.73','A03');

-- cajas del almacen A04 (Fontaneria)
insert into cajas values ('CJA4-01','Tubo PVC .13', '5858.05','A04');
insert into cajas values ('CJA4-02','Tubo PVC .16', '6058.05','A04');
insert into cajas values ('CJA4-03','Tubo PVC .18', '5001.05','A04');
insert into cajas values ('CJA4-04','Tubo PVC .20', '4058.69','A04');
insert into cajas values ('CJA4-05','Tubo PVC .22', '3922.27','A04');


select all * from cajas where almacen like 'A03';
