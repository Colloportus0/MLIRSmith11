module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [5 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(2147483647 : i32) : i32
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.null : !llvm.ptr<i32>
    %22 = llvm.getelementptr %21[%16] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %23 = llvm.ptrtoint %22 : !llvm.ptr<i32> to i64
    %24 = llvm.mlir.constant(16 : index) : i64
    %25 = llvm.add %23, %24  : i64
    %26 = llvm.call @malloc(%25) : (i64) -> !llvm.ptr<i8>
    %27 = llvm.bitcast %26 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %28 = llvm.ptrtoint %27 : !llvm.ptr<i32> to i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.sub %24, %29  : i64
    %31 = llvm.add %28, %30  : i64
    %32 = llvm.urem %31, %24  : i64
    %33 = llvm.sub %31, %32  : i64
    %34 = llvm.inttoptr %33 : i64 to !llvm.ptr<i32>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %36 = llvm.insertvalue %27, %35[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.insertvalue %16, %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %19, %42[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %17, %43[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %18, %44[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %19, %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %20, %46[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%48 : i64)
  ^bb1(%51: i64):  // 2 preds: ^bb0, ^bb11
    %52 = llvm.icmp "slt" %51, %49 : i64
    llvm.cond_br %52, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%53 : i64)
  ^bb3(%56: i64):  // 2 preds: ^bb2, ^bb10
    %57 = llvm.icmp "slt" %56, %54 : i64
    llvm.cond_br %57, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%58 : i64)
  ^bb5(%61: i64):  // 2 preds: ^bb4, ^bb9
    %62 = llvm.icmp "slt" %61, %59 : i64
    llvm.cond_br %62, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%63 : i64)
  ^bb7(%66: i64):  // 2 preds: ^bb6, ^bb8
    %67 = llvm.icmp "slt" %66, %64 : i64
    llvm.cond_br %67, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %68 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.add %51, %56  : i64
    %70 = llvm.add %69, %61  : i64
    %71 = llvm.add %70, %66  : i64
    %72 = llvm.getelementptr %68[%71] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %15, %72 : !llvm.ptr<i32>
    %73 = llvm.add %66, %65  : i64
    llvm.br ^bb7(%73 : i64)
  ^bb9:  // pred: ^bb7
    %74 = llvm.add %61, %60  : i64
    llvm.br ^bb5(%74 : i64)
  ^bb10:  // pred: ^bb5
    %75 = llvm.add %56, %55  : i64
    llvm.br ^bb3(%75 : i64)
  ^bb11:  // pred: ^bb3
    %76 = llvm.add %51, %50  : i64
    llvm.br ^bb1(%76 : i64)
  ^bb12:  // pred: ^bb1
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%77 : i64)
  ^bb13(%80: i64):  // 2 preds: ^bb12, ^bb26
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%82 : i64)
  ^bb15(%85: i64):  // 2 preds: ^bb14, ^bb25
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%87 : i64)
  ^bb17(%90: i64):  // 2 preds: ^bb16, ^bb24
    %91 = llvm.icmp "slt" %90, %88 : i64
    llvm.cond_br %91, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %92 = llvm.mlir.constant(0 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%92 : i64)
  ^bb19(%95: i64):  // 2 preds: ^bb18, ^bb23
    %96 = llvm.icmp "slt" %95, %93 : i64
    llvm.cond_br %96, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %97 = llvm.mlir.constant(0 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%97 : i64)
  ^bb21(%100: i64):  // 2 preds: ^bb20, ^bb22
    %101 = llvm.icmp "slt" %100, %98 : i64
    llvm.cond_br %101, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %102 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %103 = llvm.add %80, %85  : i64
    %104 = llvm.add %103, %90  : i64
    %105 = llvm.add %104, %95  : i64
    %106 = llvm.add %105, %100  : i64
    %107 = llvm.getelementptr %102[%106] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %108 = llvm.load %107 : !llvm.ptr<i32>
    %109 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.add %80, %85  : i64
    %111 = llvm.add %110, %90  : i64
    %112 = llvm.add %111, %100  : i64
    %113 = llvm.getelementptr %109[%112] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %114 = llvm.load %113 : !llvm.ptr<i32>
    %115 = llvm.icmp "slt" %114, %108 : i32
    %116 = llvm.select %115, %114, %108 : i1, i32
    %117 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.add %80, %85  : i64
    %119 = llvm.add %118, %90  : i64
    %120 = llvm.add %119, %100  : i64
    %121 = llvm.getelementptr %117[%120] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %116, %121 : !llvm.ptr<i32>
    %122 = llvm.add %100, %99  : i64
    llvm.br ^bb21(%122 : i64)
  ^bb23:  // pred: ^bb21
    %123 = llvm.add %95, %94  : i64
    llvm.br ^bb19(%123 : i64)
  ^bb24:  // pred: ^bb19
    %124 = llvm.add %90, %89  : i64
    llvm.br ^bb17(%124 : i64)
  ^bb25:  // pred: ^bb17
    %125 = llvm.add %85, %84  : i64
    llvm.br ^bb15(%125 : i64)
  ^bb26:  // pred: ^bb15
    %126 = llvm.add %80, %79  : i64
    llvm.br ^bb13(%126 : i64)
  ^bb27:  // pred: ^bb13
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.constant(1 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.null : !llvm.ptr<i1>
    %133 = llvm.getelementptr %132[%127] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %134 = llvm.ptrtoint %133 : !llvm.ptr<i1> to i64
    %135 = llvm.mlir.constant(16 : index) : i64
    %136 = llvm.add %134, %135  : i64
    %137 = llvm.call @malloc(%136) : (i64) -> !llvm.ptr<i8>
    %138 = llvm.bitcast %137 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %139 = llvm.ptrtoint %138 : !llvm.ptr<i1> to i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.sub %135, %140  : i64
    %142 = llvm.add %139, %141  : i64
    %143 = llvm.urem %142, %135  : i64
    %144 = llvm.sub %142, %143  : i64
    %145 = llvm.inttoptr %144 : i64 to !llvm.ptr<i1>
    %146 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %147 = llvm.insertvalue %138, %146[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %145, %147[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.insertvalue %149, %148[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %127, %150[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %128, %151[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %129, %152[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %130, %153[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %128, %154[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %129, %155[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %130, %156[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %131, %157[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%159 : i64)
  ^bb28(%162: i64):  // 2 preds: ^bb27, ^bb38
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%164 : i64)
  ^bb30(%167: i64):  // 2 preds: ^bb29, ^bb37
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%169 : i64)
  ^bb32(%172: i64):  // 2 preds: ^bb31, ^bb36
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%174 : i64)
  ^bb34(%177: i64):  // 2 preds: ^bb33, ^bb35
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %179 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.add %162, %167  : i64
    %181 = llvm.add %180, %172  : i64
    %182 = llvm.add %181, %177  : i64
    %183 = llvm.getelementptr %179[%182] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %184 = llvm.load %183 : !llvm.ptr<i32>
    %185 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.add %162, %167  : i64
    %187 = llvm.add %186, %172  : i64
    %188 = llvm.add %187, %177  : i64
    %189 = llvm.getelementptr %185[%188] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %190 = llvm.load %189 : !llvm.ptr<i32>
    %191 = llvm.icmp "sgt" %184, %190 : i32
    %192 = llvm.extractvalue %158[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.add %162, %167  : i64
    %194 = llvm.add %193, %172  : i64
    %195 = llvm.add %194, %177  : i64
    %196 = llvm.getelementptr %192[%195] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %191, %196 : !llvm.ptr<i1>
    %197 = llvm.add %177, %176  : i64
    llvm.br ^bb34(%197 : i64)
  ^bb36:  // pred: ^bb34
    %198 = llvm.add %172, %171  : i64
    llvm.br ^bb32(%198 : i64)
  ^bb37:  // pred: ^bb32
    %199 = llvm.add %167, %166  : i64
    llvm.br ^bb30(%199 : i64)
  ^bb38:  // pred: ^bb30
    %200 = llvm.add %162, %161  : i64
    llvm.br ^bb28(%200 : i64)
  ^bb39:  // pred: ^bb28
    %201 = llvm.mlir.constant(5 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.null : !llvm.ptr<i32>
    %207 = llvm.getelementptr %206[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %208 = llvm.ptrtoint %207 : !llvm.ptr<i32> to i64
    %209 = llvm.mlir.constant(16 : index) : i64
    %210 = llvm.add %208, %209  : i64
    %211 = llvm.call @malloc(%210) : (i64) -> !llvm.ptr<i8>
    %212 = llvm.bitcast %211 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %213 = llvm.ptrtoint %212 : !llvm.ptr<i32> to i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.sub %209, %214  : i64
    %216 = llvm.add %213, %215  : i64
    %217 = llvm.urem %216, %209  : i64
    %218 = llvm.sub %216, %217  : i64
    %219 = llvm.inttoptr %218 : i64 to !llvm.ptr<i32>
    %220 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %221 = llvm.insertvalue %212, %220[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %219, %221[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.insertvalue %223, %222[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %201, %224[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %202, %225[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %203, %226[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %204, %227[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %202, %228[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %203, %229[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %204, %230[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %205, %231[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%233 : i64)
  ^bb40(%236: i64):  // 2 preds: ^bb39, ^bb50
    %237 = llvm.icmp "slt" %236, %234 : i64
    llvm.cond_br %237, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %238 = llvm.mlir.constant(0 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%238 : i64)
  ^bb42(%241: i64):  // 2 preds: ^bb41, ^bb49
    %242 = llvm.icmp "slt" %241, %239 : i64
    llvm.cond_br %242, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%243 : i64)
  ^bb44(%246: i64):  // 2 preds: ^bb43, ^bb48
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%248 : i64)
  ^bb46(%251: i64):  // 2 preds: ^bb45, ^bb47
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %253 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.add %236, %241  : i64
    %255 = llvm.add %254, %246  : i64
    %256 = llvm.add %255, %251  : i64
    %257 = llvm.getelementptr %253[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %258 = llvm.load %257 : !llvm.ptr<i32>
    %259 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.add %236, %241  : i64
    %261 = llvm.add %260, %246  : i64
    %262 = llvm.add %261, %251  : i64
    %263 = llvm.getelementptr %259[%262] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %258, %263 : !llvm.ptr<i32>
    %264 = llvm.add %251, %250  : i64
    llvm.br ^bb46(%264 : i64)
  ^bb48:  // pred: ^bb46
    %265 = llvm.add %246, %245  : i64
    llvm.br ^bb44(%265 : i64)
  ^bb49:  // pred: ^bb44
    %266 = llvm.add %241, %240  : i64
    llvm.br ^bb42(%266 : i64)
  ^bb50:  // pred: ^bb42
    %267 = llvm.add %236, %235  : i64
    llvm.br ^bb40(%267 : i64)
  ^bb51:  // pred: ^bb40
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%268 : i64)
  ^bb52(%271: i64):  // 2 preds: ^bb51, ^bb62
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%273 : i64)
  ^bb54(%276: i64):  // 2 preds: ^bb53, ^bb61
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%278 : i64)
  ^bb56(%281: i64):  // 2 preds: ^bb55, ^bb60
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%283 : i64)
  ^bb58(%286: i64):  // 2 preds: ^bb57, ^bb59
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.add %271, %288  : i64
    %290 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.add %271, %276  : i64
    %292 = llvm.add %291, %281  : i64
    %293 = llvm.add %292, %286  : i64
    %294 = llvm.getelementptr %290[%293] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %295 = llvm.load %294 : !llvm.ptr<i32>
    %296 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.add %289, %276  : i64
    %298 = llvm.add %297, %281  : i64
    %299 = llvm.add %298, %286  : i64
    %300 = llvm.getelementptr %296[%299] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %295, %300 : !llvm.ptr<i32>
    %301 = llvm.add %286, %285  : i64
    llvm.br ^bb58(%301 : i64)
  ^bb60:  // pred: ^bb58
    %302 = llvm.add %281, %280  : i64
    llvm.br ^bb56(%302 : i64)
  ^bb61:  // pred: ^bb56
    %303 = llvm.add %276, %275  : i64
    llvm.br ^bb54(%303 : i64)
  ^bb62:  // pred: ^bb54
    %304 = llvm.add %271, %270  : i64
    llvm.br ^bb52(%304 : i64)
  ^bb63:  // pred: ^bb52
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%305 : i64)
  ^bb64(%308: i64):  // 2 preds: ^bb63, ^bb74
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%310 : i64)
  ^bb66(%313: i64):  // 2 preds: ^bb65, ^bb73
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%315 : i64)
  ^bb68(%318: i64):  // 2 preds: ^bb67, ^bb72
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%320 : i64)
  ^bb70(%323: i64):  // 2 preds: ^bb69, ^bb71
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.add %308, %325  : i64
    %327 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.add %308, %313  : i64
    %329 = llvm.add %328, %318  : i64
    %330 = llvm.add %329, %323  : i64
    %331 = llvm.getelementptr %327[%330] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %332 = llvm.load %331 : !llvm.ptr<i32>
    %333 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.add %326, %313  : i64
    %335 = llvm.add %334, %318  : i64
    %336 = llvm.add %335, %323  : i64
    %337 = llvm.getelementptr %333[%336] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %332, %337 : !llvm.ptr<i32>
    %338 = llvm.add %323, %322  : i64
    llvm.br ^bb70(%338 : i64)
  ^bb72:  // pred: ^bb70
    %339 = llvm.add %318, %317  : i64
    llvm.br ^bb68(%339 : i64)
  ^bb73:  // pred: ^bb68
    %340 = llvm.add %313, %312  : i64
    llvm.br ^bb66(%340 : i64)
  ^bb74:  // pred: ^bb66
    %341 = llvm.add %308, %307  : i64
    llvm.br ^bb64(%341 : i64)
  ^bb75:  // pred: ^bb64
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%342 : i64)
  ^bb76(%345: i64):  // 2 preds: ^bb75, ^bb86
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%347 : i64)
  ^bb78(%350: i64):  // 2 preds: ^bb77, ^bb85
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%352 : i64)
  ^bb80(%355: i64):  // 2 preds: ^bb79, ^bb84
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%357 : i64)
  ^bb82(%360: i64):  // 2 preds: ^bb81, ^bb83
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %362 = llvm.mlir.constant(3 : index) : i64
    %363 = llvm.add %345, %362  : i64
    %364 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.add %345, %350  : i64
    %366 = llvm.add %365, %355  : i64
    %367 = llvm.add %366, %360  : i64
    %368 = llvm.getelementptr %364[%367] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %369 = llvm.load %368 : !llvm.ptr<i32>
    %370 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.add %363, %350  : i64
    %372 = llvm.add %371, %355  : i64
    %373 = llvm.add %372, %360  : i64
    %374 = llvm.getelementptr %370[%373] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %369, %374 : !llvm.ptr<i32>
    %375 = llvm.add %360, %359  : i64
    llvm.br ^bb82(%375 : i64)
  ^bb84:  // pred: ^bb82
    %376 = llvm.add %355, %354  : i64
    llvm.br ^bb80(%376 : i64)
  ^bb85:  // pred: ^bb80
    %377 = llvm.add %350, %349  : i64
    llvm.br ^bb78(%377 : i64)
  ^bb86:  // pred: ^bb78
    %378 = llvm.add %345, %344  : i64
    llvm.br ^bb76(%378 : i64)
  ^bb87:  // pred: ^bb76
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%379 : i64)
  ^bb88(%382: i64):  // 2 preds: ^bb87, ^bb98
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%384 : i64)
  ^bb90(%387: i64):  // 2 preds: ^bb89, ^bb97
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%389 : i64)
  ^bb92(%392: i64):  // 2 preds: ^bb91, ^bb96
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%394 : i64)
  ^bb94(%397: i64):  // 2 preds: ^bb93, ^bb95
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.add %382, %399  : i64
    %401 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.add %382, %387  : i64
    %403 = llvm.add %402, %392  : i64
    %404 = llvm.add %403, %397  : i64
    %405 = llvm.getelementptr %401[%404] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %406 = llvm.load %405 : !llvm.ptr<i32>
    %407 = llvm.extractvalue %232[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.add %400, %387  : i64
    %409 = llvm.add %408, %392  : i64
    %410 = llvm.add %409, %397  : i64
    %411 = llvm.getelementptr %407[%410] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %406, %411 : !llvm.ptr<i32>
    %412 = llvm.add %397, %396  : i64
    llvm.br ^bb94(%412 : i64)
  ^bb96:  // pred: ^bb94
    %413 = llvm.add %392, %391  : i64
    llvm.br ^bb92(%413 : i64)
  ^bb97:  // pred: ^bb92
    %414 = llvm.add %387, %386  : i64
    llvm.br ^bb90(%414 : i64)
  ^bb98:  // pred: ^bb90
    %415 = llvm.add %382, %381  : i64
    llvm.br ^bb88(%415 : i64)
  ^bb99:  // pred: ^bb88
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(1 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.null : !llvm.ptr<i64>
    %422 = llvm.getelementptr %421[%416] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %423 = llvm.ptrtoint %422 : !llvm.ptr<i64> to i64
    %424 = llvm.mlir.constant(16 : index) : i64
    %425 = llvm.add %423, %424  : i64
    %426 = llvm.call @malloc(%425) : (i64) -> !llvm.ptr<i8>
    %427 = llvm.bitcast %426 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %428 = llvm.ptrtoint %427 : !llvm.ptr<i64> to i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.sub %424, %429  : i64
    %431 = llvm.add %428, %430  : i64
    %432 = llvm.urem %431, %424  : i64
    %433 = llvm.sub %431, %432  : i64
    %434 = llvm.inttoptr %433 : i64 to !llvm.ptr<i64>
    %435 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %436 = llvm.insertvalue %427, %435[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %437 = llvm.insertvalue %434, %436[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.insertvalue %438, %437[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %416, %439[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %417, %440[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %418, %441[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %419, %442[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %417, %443[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %418, %444[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %419, %445[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %420, %446[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mlir.constant(0 : index) : i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb100(%448 : i64)
  ^bb100(%451: i64):  // 2 preds: ^bb99, ^bb110
    %452 = llvm.icmp "slt" %451, %449 : i64
    llvm.cond_br %452, ^bb101, ^bb111
  ^bb101:  // pred: ^bb100
    %453 = llvm.mlir.constant(0 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb102(%453 : i64)
  ^bb102(%456: i64):  // 2 preds: ^bb101, ^bb109
    %457 = llvm.icmp "slt" %456, %454 : i64
    llvm.cond_br %457, ^bb103, ^bb110
  ^bb103:  // pred: ^bb102
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb104(%458 : i64)
  ^bb104(%461: i64):  // 2 preds: ^bb103, ^bb108
    %462 = llvm.icmp "slt" %461, %459 : i64
    llvm.cond_br %462, ^bb105, ^bb109
  ^bb105:  // pred: ^bb104
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%463 : i64)
  ^bb106(%466: i64):  // 2 preds: ^bb105, ^bb107
    %467 = llvm.icmp "slt" %466, %464 : i64
    llvm.cond_br %467, ^bb107, ^bb108
  ^bb107:  // pred: ^bb106
    %468 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.add %451, %456  : i64
    %470 = llvm.add %469, %461  : i64
    %471 = llvm.add %470, %466  : i64
    %472 = llvm.getelementptr %468[%471] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %473 = llvm.load %472 : !llvm.ptr<i32>
    %474 = llvm.sext %473 : i32 to i64
    %475 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.add %451, %456  : i64
    %477 = llvm.add %476, %461  : i64
    %478 = llvm.add %477, %466  : i64
    %479 = llvm.getelementptr %475[%478] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %474, %479 : !llvm.ptr<i64>
    %480 = llvm.add %466, %465  : i64
    llvm.br ^bb106(%480 : i64)
  ^bb108:  // pred: ^bb106
    %481 = llvm.add %461, %460  : i64
    llvm.br ^bb104(%481 : i64)
  ^bb109:  // pred: ^bb104
    %482 = llvm.add %456, %455  : i64
    llvm.br ^bb102(%482 : i64)
  ^bb110:  // pred: ^bb102
    %483 = llvm.add %451, %450  : i64
    llvm.br ^bb100(%483 : i64)
  ^bb111:  // pred: ^bb100
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.null : !llvm.ptr<i64>
    %489 = llvm.getelementptr %488[%484] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %490 = llvm.ptrtoint %489 : !llvm.ptr<i64> to i64
    %491 = llvm.mlir.constant(16 : index) : i64
    %492 = llvm.add %490, %491  : i64
    %493 = llvm.call @malloc(%492) : (i64) -> !llvm.ptr<i8>
    %494 = llvm.bitcast %493 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %495 = llvm.ptrtoint %494 : !llvm.ptr<i64> to i64
    %496 = llvm.mlir.constant(1 : index) : i64
    %497 = llvm.sub %491, %496  : i64
    %498 = llvm.add %495, %497  : i64
    %499 = llvm.urem %498, %491  : i64
    %500 = llvm.sub %498, %499  : i64
    %501 = llvm.inttoptr %500 : i64 to !llvm.ptr<i64>
    %502 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %503 = llvm.insertvalue %494, %502[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %504 = llvm.insertvalue %501, %503[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.insertvalue %505, %504[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %507 = llvm.insertvalue %484, %506[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %508 = llvm.insertvalue %485, %507[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %509 = llvm.insertvalue %486, %508[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %510 = llvm.insertvalue %485, %509[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %511 = llvm.insertvalue %486, %510[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %512 = llvm.insertvalue %487, %511[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%513 : i64)
  ^bb112(%516: i64):  // 2 preds: ^bb111, ^bb119
    %517 = llvm.icmp "slt" %516, %514 : i64
    llvm.cond_br %517, ^bb113, ^bb120
  ^bb113:  // pred: ^bb112
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(1 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb114(%518 : i64)
  ^bb114(%521: i64):  // 2 preds: ^bb113, ^bb118
    %522 = llvm.icmp "slt" %521, %519 : i64
    llvm.cond_br %522, ^bb115, ^bb119
  ^bb115:  // pred: ^bb114
    %523 = llvm.mlir.constant(0 : index) : i64
    %524 = llvm.mlir.constant(1 : index) : i64
    %525 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb116(%523 : i64)
  ^bb116(%526: i64):  // 2 preds: ^bb115, ^bb117
    %527 = llvm.icmp "slt" %526, %524 : i64
    llvm.cond_br %527, ^bb117, ^bb118
  ^bb117:  // pred: ^bb116
    %528 = llvm.extractvalue %512[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %529 = llvm.add %516, %521  : i64
    %530 = llvm.add %529, %526  : i64
    %531 = llvm.getelementptr %528[%530] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %531 : !llvm.ptr<i64>
    %532 = llvm.add %526, %525  : i64
    llvm.br ^bb116(%532 : i64)
  ^bb118:  // pred: ^bb116
    %533 = llvm.add %521, %520  : i64
    llvm.br ^bb114(%533 : i64)
  ^bb119:  // pred: ^bb114
    %534 = llvm.add %516, %515  : i64
    llvm.br ^bb112(%534 : i64)
  ^bb120:  // pred: ^bb112
    %535 = llvm.mlir.constant(0 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb121(%535 : i64)
  ^bb121(%538: i64):  // 2 preds: ^bb120, ^bb131
    %539 = llvm.icmp "slt" %538, %536 : i64
    llvm.cond_br %539, ^bb122, ^bb132
  ^bb122:  // pred: ^bb121
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    %542 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb123(%540 : i64)
  ^bb123(%543: i64):  // 2 preds: ^bb122, ^bb130
    %544 = llvm.icmp "slt" %543, %541 : i64
    llvm.cond_br %544, ^bb124, ^bb131
  ^bb124:  // pred: ^bb123
    %545 = llvm.mlir.constant(0 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb125(%545 : i64)
  ^bb125(%548: i64):  // 2 preds: ^bb124, ^bb129
    %549 = llvm.icmp "slt" %548, %546 : i64
    llvm.cond_br %549, ^bb126, ^bb130
  ^bb126:  // pred: ^bb125
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb127(%550 : i64)
  ^bb127(%553: i64):  // 2 preds: ^bb126, ^bb128
    %554 = llvm.icmp "slt" %553, %551 : i64
    llvm.cond_br %554, ^bb128, ^bb129
  ^bb128:  // pred: ^bb127
    %555 = llvm.extractvalue %447[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %556 = llvm.add %538, %543  : i64
    %557 = llvm.add %556, %548  : i64
    %558 = llvm.add %557, %553  : i64
    %559 = llvm.getelementptr %555[%558] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %560 = llvm.load %559 : !llvm.ptr<i64>
    %561 = llvm.extractvalue %512[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %562 = llvm.add %543, %548  : i64
    %563 = llvm.add %562, %553  : i64
    %564 = llvm.getelementptr %561[%563] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %565 = llvm.load %564 : !llvm.ptr<i64>
    %566 = llvm.add %565, %560  : i64
    %567 = llvm.extractvalue %512[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %568 = llvm.add %543, %548  : i64
    %569 = llvm.add %568, %553  : i64
    %570 = llvm.getelementptr %567[%569] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %566, %570 : !llvm.ptr<i64>
    %571 = llvm.add %553, %552  : i64
    llvm.br ^bb127(%571 : i64)
  ^bb129:  // pred: ^bb127
    %572 = llvm.add %548, %547  : i64
    llvm.br ^bb125(%572 : i64)
  ^bb130:  // pred: ^bb125
    %573 = llvm.add %543, %542  : i64
    llvm.br ^bb123(%573 : i64)
  ^bb131:  // pred: ^bb123
    %574 = llvm.add %538, %537  : i64
    llvm.br ^bb121(%574 : i64)
  ^bb132:  // pred: ^bb121
    %575 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %576 = llvm.extractvalue %512[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %577 = llvm.extractvalue %512[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %578 = llvm.insertvalue %576, %575[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %579 = llvm.insertvalue %577, %578[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.insertvalue %580, %579[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %582 = llvm.mlir.constant(1 : index) : i64
    %583 = llvm.insertvalue %582, %581[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %584 = llvm.mlir.constant(1 : index) : i64
    %585 = llvm.insertvalue %584, %583[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %586 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>
    %587 = llvm.insertvalue %158, %586[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %588 = llvm.insertvalue %232, %587[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %589 = llvm.insertvalue %585, %588[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    llvm.return %589 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %54 = llvm.extractvalue %51[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.mlir.constant(24 : i64) : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %59 = llvm.mlir.constant(4 : i64) : i64
    %60 = llvm.call @omTensorCreateUntyped(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.mlir.constant(1 : i64) : i64
    %62 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %64 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.bitcast %64 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%60, %61, %63, %65) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %66 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%60, %66) : (!llvm.ptr<i8>, i64) -> ()
    %67 = llvm.call @omTensorGetShape(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.call @omTensorGetStrides(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %67[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %68[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(1 : i64) : i64
    %75 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %67[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %68[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(2 : i64) : i64
    %80 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %67[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %68[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(3 : i64) : i64
    %85 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %67[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %68[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.getelementptr %58[%89] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %60, %90 : !llvm.ptr<ptr<i8>>
    %91 = llvm.mlir.constant(4 : i64) : i64
    %92 = llvm.call @omTensorCreateUntyped(%91) : (i64) -> !llvm.ptr<i8>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.bitcast %94 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %96 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%92, %93, %95, %97) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %98 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%92, %98) : (!llvm.ptr<i8>, i64) -> ()
    %99 = llvm.call @omTensorGetShape(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %100 = llvm.call @omTensorGetStrides(%92) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %99[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %100[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(1 : i64) : i64
    %107 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %99[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %100[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(2 : i64) : i64
    %112 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %99[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %100[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(3 : i64) : i64
    %117 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %99[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %100[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.getelementptr %58[%121] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %92, %122 : !llvm.ptr<ptr<i8>>
    %123 = llvm.mlir.constant(1 : i64) : i64
    %124 = llvm.call @omTensorCreateUntyped(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %54[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %127 = llvm.bitcast %126 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %128 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%124, %125, %127, %129) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %130 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%124, %130) : (!llvm.ptr<i8>, i64) -> ()
    %131 = llvm.call @omTensorGetShape(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.call @omTensorGetStrides(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.mlir.constant(0 : i64) : i64
    %134 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.getelementptr %131[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.getelementptr %132[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.mlir.constant(2 : i64) : i64
    %139 = llvm.getelementptr %58[%138] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %124, %139 : !llvm.ptr<ptr<i8>>
    %140 = llvm.call @omTensorListCreate(%58, %55, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %140 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<198 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<198 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

