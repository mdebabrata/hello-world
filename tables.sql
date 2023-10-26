-- usatrading.bnf_tick_data definition

-- Drop table

-- DROP TABLE usatrading.bnf_tick_data;

CREATE TABLE usatrading.bnf_tick_data (
	intime timestamp NULL DEFAULT now(),
	spot_price numeric(20, 4) NULL,
	atm_strike numeric(20) NULL,
	"token" numeric(20) NULL,
	last_price numeric(20, 4) NULL,
	ltp_change numeric(20, 4) NULL,
	last_trade_time timestamp NULL,
	oi numeric(20, 4) NULL,
	oi_change numeric(20, 4) NULL,
	volume numeric(20, 4) NULL,
	is_liquid bool NULL,
	theta numeric(10, 4) NULL,
	delta numeric(10, 4) NULL,
	gamma numeric(10, 4) NULL,
	vega numeric(10, 4) NULL,
	iv numeric(10, 4) NULL
);


-- usatrading.instrument_token definition

-- Drop table

-- DROP TABLE usatrading.instrument_token;

CREATE TABLE usatrading.instrument_token (
	instrument_token numeric(20) NULL,
	exchange_token numeric(10) NULL,
	tradingsymbol varchar(30) NULL,
	"name" varchar(10) NULL,
	last_price numeric(20, 4) NULL,
	expiry date NULL,
	strike numeric(20) NULL,
	tick_size numeric(20) NULL,
	lot_size numeric(20) NULL,
	instrument_type varchar(5) NULL,
	segment varchar(10) NULL,
	exchange varchar(10) NULL,
	updated_at timestamp NULL DEFAULT now()
);
