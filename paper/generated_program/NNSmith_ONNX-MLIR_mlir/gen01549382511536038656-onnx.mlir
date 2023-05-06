module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @Resize_Size(!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, i64, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.mlir.global internal constant @"om_/Resize"("/Resize") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_floor("floor") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_linear("linear") {addr_space = 0 : i32, alignment = 16 : i64}
  llvm.mlir.global internal constant @om_half_pixel("half_pixel") {addr_space = 0 : i32, alignment = 16 : i64}
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
  llvm.mlir.global internal constant @constant_0(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0xFFF0000000000000 : f64) : f64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<3 x i64>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(3 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.mlir.null : !llvm.ptr<f64>
    %36 = llvm.getelementptr %35[%34] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %37 = llvm.ptrtoint %36 : !llvm.ptr<f64> to i64
    %38 = llvm.mlir.constant(16 : index) : i64
    %39 = llvm.add %37, %38  : i64
    %40 = llvm.call @malloc(%39) : (i64) -> !llvm.ptr<i8>
    %41 = llvm.bitcast %40 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<f64> to i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.sub %38, %43  : i64
    %45 = llvm.add %42, %44  : i64
    %46 = llvm.urem %45, %38  : i64
    %47 = llvm.sub %45, %46  : i64
    %48 = llvm.inttoptr %47 : i64 to !llvm.ptr<f64>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %50 = llvm.insertvalue %41, %49[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %27, %53[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %28, %54[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %33, %57[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %32, %58[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %30, %59[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %31, %60[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%62 : i64)
  ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb11
    %66 = llvm.icmp "slt" %65, %63 : i64
    llvm.cond_br %66, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%67 : i64)
  ^bb3(%70: i64):  // 2 preds: ^bb2, ^bb10
    %71 = llvm.icmp "slt" %70, %68 : i64
    llvm.cond_br %71, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%72 : i64)
  ^bb5(%75: i64):  // 2 preds: ^bb4, ^bb9
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%77 : i64)
  ^bb7(%80: i64):  // 2 preds: ^bb6, ^bb8
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %82 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mul %65, %83  : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mul %70, %85  : i64
    %87 = llvm.add %84, %86  : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mul %75, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.add %90, %80  : i64
    %92 = llvm.getelementptr %82[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %93 = llvm.load %92 : !llvm.ptr<i32>
    %94 = llvm.sitofp %93 : i32 to f64
    %95 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mul %65, %96  : i64
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mul %70, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mul %75, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.add %103, %80  : i64
    %105 = llvm.getelementptr %95[%104] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %94, %105 : !llvm.ptr<f64>
    %106 = llvm.add %80, %79  : i64
    llvm.br ^bb7(%106 : i64)
  ^bb9:  // pred: ^bb7
    %107 = llvm.add %75, %74  : i64
    llvm.br ^bb5(%107 : i64)
  ^bb10:  // pred: ^bb5
    %108 = llvm.add %70, %69  : i64
    llvm.br ^bb3(%108 : i64)
  ^bb11:  // pred: ^bb3
    %109 = llvm.add %65, %64  : i64
    llvm.br ^bb1(%109 : i64)
  ^bb12:  // pred: ^bb1
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mlir.null : !llvm.ptr<f64>
    %119 = llvm.getelementptr %118[%117] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %120 = llvm.ptrtoint %119 : !llvm.ptr<f64> to i64
    %121 = llvm.mlir.constant(16 : index) : i64
    %122 = llvm.add %120, %121  : i64
    %123 = llvm.call @malloc(%122) : (i64) -> !llvm.ptr<i8>
    %124 = llvm.bitcast %123 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %125 = llvm.ptrtoint %124 : !llvm.ptr<f64> to i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.sub %121, %126  : i64
    %128 = llvm.add %125, %127  : i64
    %129 = llvm.urem %128, %121  : i64
    %130 = llvm.sub %128, %129  : i64
    %131 = llvm.inttoptr %130 : i64 to !llvm.ptr<f64>
    %132 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %133 = llvm.insertvalue %124, %132[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %131, %133[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.mlir.constant(0 : index) : i64
    %136 = llvm.insertvalue %135, %134[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %110, %136[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %111, %137[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %112, %138[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %113, %139[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %116, %140[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %115, %141[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %113, %142[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %114, %143[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.null : !llvm.ptr<f64>
    %147 = llvm.getelementptr %146[%145] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %148 = llvm.ptrtoint %147 : !llvm.ptr<f64> to i64
    %149 = llvm.alloca %148 x f64 : (i64) -> !llvm.ptr<f64>
    %150 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64)>
    %151 = llvm.insertvalue %149, %150[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %152 = llvm.insertvalue %149, %151[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.insertvalue %153, %152[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %155 = llvm.mlir.constant(0 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%155 : i64)
  ^bb13(%158: i64):  // 2 preds: ^bb12, ^bb29
    %159 = llvm.icmp "slt" %158, %156 : i64
    llvm.cond_br %159, ^bb14, ^bb30
  ^bb14:  // pred: ^bb13
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%160 : i64)
  ^bb15(%163: i64):  // 2 preds: ^bb14, ^bb28
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb16, ^bb29
  ^bb16:  // pred: ^bb15
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%165 : i64)
  ^bb17(%168: i64):  // 2 preds: ^bb16, ^bb27
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb18, ^bb28
  ^bb18:  // pred: ^bb17
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%170 : i64)
  ^bb19(%173: i64):  // 2 preds: ^bb18, ^bb26
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    %175 = llvm.extractvalue %154[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %12, %175 : !llvm.ptr<f64>
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.icmp "slt" %168, %176 : i64
    %178 = llvm.select %177, %176, %168 : i1, i64
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.icmp "slt" %173, %179 : i64
    %181 = llvm.select %180, %179, %173 : i1, i64
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.mlir.constant(-1 : index) : i64
    %185 = llvm.mul %168, %184  : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.add %185, %186  : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.add %168, %188  : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.icmp "sgt" %187, %183 : i64
    %192 = llvm.select %191, %183, %187 : i1, i64
    %193 = llvm.icmp "slt" %192, %189 : i64
    %194 = llvm.select %193, %192, %189 : i1, i64
    %195 = llvm.icmp "slt" %194, %190 : i64
    %196 = llvm.select %195, %194, %190 : i1, i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%182 : i64)
  ^bb21(%198: i64):  // 2 preds: ^bb20, ^bb25
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mlir.constant(-1 : index) : i64
    %203 = llvm.mul %173, %202  : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.add %203, %204  : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.add %173, %206  : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.icmp "sgt" %205, %201 : i64
    %210 = llvm.select %209, %201, %205 : i1, i64
    %211 = llvm.icmp "slt" %210, %207 : i64
    %212 = llvm.select %211, %210, %207 : i1, i64
    %213 = llvm.icmp "slt" %212, %208 : i64
    %214 = llvm.select %213, %212, %208 : i1, i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%200 : i64)
  ^bb23(%216: i64):  // 2 preds: ^bb22, ^bb24
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %218 = llvm.add %198, %178  : i64
    %219 = llvm.add %216, %181  : i64
    %220 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mul %158, %221  : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %163, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mul %218, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.add %228, %219  : i64
    %230 = llvm.getelementptr %220[%229] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %231 = llvm.load %230 : !llvm.ptr<f64>
    %232 = llvm.extractvalue %154[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %233 = llvm.load %232 : !llvm.ptr<f64>
    %234 = llvm.fcmp "ogt" %233, %231 : f64
    %235 = llvm.select %234, %233, %231 : i1, f64
    %236 = llvm.extractvalue %154[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    llvm.store %235, %236 : !llvm.ptr<f64>
    %237 = llvm.add %216, %215  : i64
    llvm.br ^bb23(%237 : i64)
  ^bb25:  // pred: ^bb23
    %238 = llvm.add %198, %197  : i64
    llvm.br ^bb21(%238 : i64)
  ^bb26:  // pred: ^bb21
    %239 = llvm.extractvalue %154[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64)> 
    %240 = llvm.load %239 : !llvm.ptr<f64>
    %241 = llvm.extractvalue %144[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %158, %242  : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mul %163, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mul %168, %247  : i64
    %249 = llvm.add %246, %248  : i64
    %250 = llvm.add %249, %173  : i64
    %251 = llvm.getelementptr %241[%250] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %240, %251 : !llvm.ptr<f64>
    %252 = llvm.add %173, %172  : i64
    llvm.br ^bb19(%252 : i64)
  ^bb27:  // pred: ^bb19
    %253 = llvm.add %168, %167  : i64
    llvm.br ^bb17(%253 : i64)
  ^bb28:  // pred: ^bb17
    %254 = llvm.add %163, %162  : i64
    llvm.br ^bb15(%254 : i64)
  ^bb29:  // pred: ^bb15
    %255 = llvm.add %158, %157  : i64
    llvm.br ^bb13(%255 : i64)
  ^bb30:  // pred: ^bb13
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mlir.null : !llvm.ptr<f64>
    %263 = llvm.getelementptr %262[%261] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %264 = llvm.ptrtoint %263 : !llvm.ptr<f64> to i64
    %265 = llvm.mlir.constant(16 : index) : i64
    %266 = llvm.add %264, %265  : i64
    %267 = llvm.call @malloc(%266) : (i64) -> !llvm.ptr<i8>
    %268 = llvm.bitcast %267 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %269 = llvm.ptrtoint %268 : !llvm.ptr<f64> to i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.sub %265, %270  : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.urem %272, %265  : i64
    %274 = llvm.sub %272, %273  : i64
    %275 = llvm.inttoptr %274 : i64 to !llvm.ptr<f64>
    %276 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>
    %277 = llvm.insertvalue %268, %276[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %278 = llvm.insertvalue %275, %277[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.insertvalue %279, %278[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %281 = llvm.insertvalue %256, %280[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %282 = llvm.insertvalue %257, %281[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %283 = llvm.insertvalue %258, %282[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %284 = llvm.insertvalue %260, %283[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %285 = llvm.insertvalue %258, %284[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %286 = llvm.insertvalue %259, %285[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%287 : i64)
  ^bb31(%290: i64):  // 2 preds: ^bb30, ^bb38
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb32, ^bb39
  ^bb32:  // pred: ^bb31
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%292 : i64)
  ^bb33(%295: i64):  // 2 preds: ^bb32, ^bb37
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb34, ^bb38
  ^bb34:  // pred: ^bb33
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%297 : i64)
  ^bb35(%300: i64):  // 2 preds: ^bb34, ^bb36
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %302 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %290, %303  : i64
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mul %295, %305  : i64
    %307 = llvm.add %304, %306  : i64
    %308 = llvm.add %307, %300  : i64
    %309 = llvm.getelementptr %302[%308] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %12, %309 : !llvm.ptr<f64>
    %310 = llvm.add %300, %299  : i64
    llvm.br ^bb35(%310 : i64)
  ^bb37:  // pred: ^bb35
    %311 = llvm.add %295, %294  : i64
    llvm.br ^bb33(%311 : i64)
  ^bb38:  // pred: ^bb33
    %312 = llvm.add %290, %289  : i64
    llvm.br ^bb31(%312 : i64)
  ^bb39:  // pred: ^bb31
    %313 = llvm.mlir.constant(0 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%313 : i64)
  ^bb40(%316: i64):  // 2 preds: ^bb39, ^bb50
    %317 = llvm.icmp "slt" %316, %314 : i64
    llvm.cond_br %317, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %318 = llvm.mlir.constant(0 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%318 : i64)
  ^bb42(%321: i64):  // 2 preds: ^bb41, ^bb49
    %322 = llvm.icmp "slt" %321, %319 : i64
    llvm.cond_br %322, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %323 = llvm.mlir.constant(0 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%323 : i64)
  ^bb44(%326: i64):  // 2 preds: ^bb43, ^bb48
    %327 = llvm.icmp "slt" %326, %324 : i64
    llvm.cond_br %327, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.mlir.constant(2 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%328 : i64)
  ^bb46(%331: i64):  // 2 preds: ^bb45, ^bb47
    %332 = llvm.icmp "slt" %331, %329 : i64
    llvm.cond_br %332, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %333 = llvm.extractvalue %144[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mul %316, %334  : i64
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mul %321, %336  : i64
    %338 = llvm.add %335, %337  : i64
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mul %326, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.add %341, %331  : i64
    %343 = llvm.getelementptr %333[%342] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %344 = llvm.load %343 : !llvm.ptr<f64>
    %345 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mul %316, %346  : i64
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mul %321, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.add %350, %331  : i64
    %352 = llvm.getelementptr %345[%351] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %353 = llvm.load %352 : !llvm.ptr<f64>
    %354 = llvm.fcmp "ogt" %353, %344 : f64
    %355 = llvm.select %354, %353, %344 : i1, f64
    %356 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mul %316, %357  : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mul %321, %359  : i64
    %361 = llvm.add %358, %360  : i64
    %362 = llvm.add %361, %331  : i64
    %363 = llvm.getelementptr %356[%362] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %355, %363 : !llvm.ptr<f64>
    %364 = llvm.add %331, %330  : i64
    llvm.br ^bb46(%364 : i64)
  ^bb48:  // pred: ^bb46
    %365 = llvm.add %326, %325  : i64
    llvm.br ^bb44(%365 : i64)
  ^bb49:  // pred: ^bb44
    %366 = llvm.add %321, %320  : i64
    llvm.br ^bb42(%366 : i64)
  ^bb50:  // pred: ^bb42
    %367 = llvm.add %316, %315  : i64
    llvm.br ^bb40(%367 : i64)
  ^bb51:  // pred: ^bb40
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.null : !llvm.ptr<f64>
    %373 = llvm.getelementptr %372[%368] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %374 = llvm.ptrtoint %373 : !llvm.ptr<f64> to i64
    %375 = llvm.mlir.constant(16 : index) : i64
    %376 = llvm.add %374, %375  : i64
    %377 = llvm.call @malloc(%376) : (i64) -> !llvm.ptr<i8>
    %378 = llvm.bitcast %377 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %379 = llvm.ptrtoint %378 : !llvm.ptr<f64> to i64
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.sub %375, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.urem %382, %375  : i64
    %384 = llvm.sub %382, %383  : i64
    %385 = llvm.inttoptr %384 : i64 to !llvm.ptr<f64>
    %386 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)>
    %387 = llvm.insertvalue %378, %386[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %388 = llvm.insertvalue %385, %387[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.insertvalue %389, %388[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %391 = llvm.insertvalue %368, %390[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %392 = llvm.insertvalue %369, %391[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %393 = llvm.insertvalue %370, %392[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %394 = llvm.insertvalue %369, %393[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %395 = llvm.insertvalue %370, %394[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %396 = llvm.insertvalue %371, %395[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %397 = llvm.mlir.constant(3 : i64) : i64
    %398 = llvm.call @omTensorCreateUntyped(%397) : (i64) -> !llvm.ptr<i8>
    %399 = llvm.mlir.constant(0 : i64) : i64
    %400 = llvm.extractvalue %396[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %401 = llvm.bitcast %400 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %402 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %403 = llvm.bitcast %402 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%398, %399, %401, %403) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %404 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%398, %404) : (!llvm.ptr<i8>, i64) -> ()
    %405 = llvm.call @omTensorGetShape(%398) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %406 = llvm.call @omTensorGetStrides(%398) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %407 = llvm.mlir.constant(0 : i64) : i64
    %408 = llvm.extractvalue %396[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %409 = llvm.getelementptr %405[%407] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %408, %409 : !llvm.ptr<i64>
    %410 = llvm.extractvalue %396[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %411 = llvm.getelementptr %406[%407] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %410, %411 : !llvm.ptr<i64>
    %412 = llvm.mlir.constant(1 : i64) : i64
    %413 = llvm.extractvalue %396[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %414 = llvm.getelementptr %405[%412] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %413, %414 : !llvm.ptr<i64>
    %415 = llvm.extractvalue %396[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %416 = llvm.getelementptr %406[%412] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %415, %416 : !llvm.ptr<i64>
    %417 = llvm.mlir.constant(2 : i64) : i64
    %418 = llvm.extractvalue %396[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %419 = llvm.getelementptr %405[%417] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %418, %419 : !llvm.ptr<i64>
    %420 = llvm.extractvalue %396[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %421 = llvm.getelementptr %406[%417] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %420, %421 : !llvm.ptr<i64>
    %422 = llvm.mlir.constant(3 : i64) : i64
    %423 = llvm.call @omTensorCreateUntyped(%422) : (i64) -> !llvm.ptr<i8>
    %424 = llvm.mlir.constant(0 : i64) : i64
    %425 = llvm.extractvalue %286[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %426 = llvm.bitcast %425 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %427 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %428 = llvm.bitcast %427 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%423, %424, %426, %428) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %429 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%423, %429) : (!llvm.ptr<i8>, i64) -> ()
    %430 = llvm.call @omTensorGetShape(%423) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %431 = llvm.call @omTensorGetStrides(%423) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %432 = llvm.mlir.constant(0 : i64) : i64
    %433 = llvm.extractvalue %286[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %434 = llvm.getelementptr %430[%432] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %433, %434 : !llvm.ptr<i64>
    %435 = llvm.extractvalue %286[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %436 = llvm.getelementptr %431[%432] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %435, %436 : !llvm.ptr<i64>
    %437 = llvm.mlir.constant(1 : i64) : i64
    %438 = llvm.extractvalue %286[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %439 = llvm.getelementptr %430[%437] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %438, %439 : !llvm.ptr<i64>
    %440 = llvm.extractvalue %286[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %441 = llvm.getelementptr %431[%437] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %440, %441 : !llvm.ptr<i64>
    %442 = llvm.mlir.constant(2 : i64) : i64
    %443 = llvm.extractvalue %286[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %444 = llvm.getelementptr %430[%442] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %443, %444 : !llvm.ptr<i64>
    %445 = llvm.extractvalue %286[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %446 = llvm.getelementptr %431[%442] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %445, %446 : !llvm.ptr<i64>
    %447 = llvm.mlir.constant(1 : i64) : i64
    %448 = llvm.call @omTensorCreateUntyped(%447) : (i64) -> !llvm.ptr<i8>
    %449 = llvm.mlir.constant(0 : i64) : i64
    %450 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.bitcast %450 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %452 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %453 = llvm.bitcast %452 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%448, %449, %451, %453) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %454 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%448, %454) : (!llvm.ptr<i8>, i64) -> ()
    %455 = llvm.call @omTensorGetShape(%448) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %456 = llvm.call @omTensorGetStrides(%448) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %457 = llvm.mlir.constant(0 : i64) : i64
    %458 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %459 = llvm.getelementptr %455[%457] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %458, %459 : !llvm.ptr<i64>
    %460 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.getelementptr %456[%457] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %460, %461 : !llvm.ptr<i64>
    %462 = llvm.mlir.addressof @om_half_pixel : !llvm.ptr<array<10 x i8>>
    %463 = llvm.mlir.constant(0 : i64) : i64
    %464 = llvm.getelementptr %462[%463, %463] : (!llvm.ptr<array<10 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %465 = llvm.mlir.constant(-7.500000e-01 : f64) : f64
    %466 = llvm.mlir.constant(0 : si64) : i64
    %467 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %468 = llvm.mlir.addressof @om_linear : !llvm.ptr<array<6 x i8>>
    %469 = llvm.mlir.constant(0 : i64) : i64
    %470 = llvm.getelementptr %468[%469, %469] : (!llvm.ptr<array<6 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %471 = llvm.mlir.addressof @om_floor : !llvm.ptr<array<5 x i8>>
    %472 = llvm.mlir.constant(0 : i64) : i64
    %473 = llvm.getelementptr %471[%472, %472] : (!llvm.ptr<array<5 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %474 = llvm.mlir.addressof @"om_/Resize" : !llvm.ptr<array<7 x i8>>
    %475 = llvm.mlir.constant(0 : i64) : i64
    %476 = llvm.getelementptr %474[%475, %475] : (!llvm.ptr<array<7 x i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.call @Resize_Size(%398, %423, %448, %464, %465, %466, %467, %470, %473, %476) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>, f64, i64, f64, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mlir.null : !llvm.ptr<i1>
    %484 = llvm.getelementptr %483[%482] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %485 = llvm.ptrtoint %484 : !llvm.ptr<i1> to i64
    %486 = llvm.mlir.constant(16 : index) : i64
    %487 = llvm.add %485, %486  : i64
    %488 = llvm.call @malloc(%487) : (i64) -> !llvm.ptr<i8>
    %489 = llvm.bitcast %488 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %490 = llvm.ptrtoint %489 : !llvm.ptr<i1> to i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.sub %486, %491  : i64
    %493 = llvm.add %490, %492  : i64
    %494 = llvm.urem %493, %486  : i64
    %495 = llvm.sub %493, %494  : i64
    %496 = llvm.inttoptr %495 : i64 to !llvm.ptr<i1>
    %497 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %498 = llvm.insertvalue %489, %497[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %499 = llvm.insertvalue %496, %498[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.insertvalue %500, %499[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %502 = llvm.insertvalue %477, %501[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %503 = llvm.insertvalue %478, %502[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %504 = llvm.insertvalue %479, %503[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %505 = llvm.insertvalue %481, %504[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %506 = llvm.insertvalue %479, %505[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %507 = llvm.insertvalue %480, %506[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %508 = llvm.mlir.constant(0 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%508 : i64)
  ^bb52(%511: i64):  // 2 preds: ^bb51, ^bb59
    %512 = llvm.icmp "slt" %511, %509 : i64
    llvm.cond_br %512, ^bb53, ^bb60
  ^bb53:  // pred: ^bb52
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%513 : i64)
  ^bb54(%516: i64):  // 2 preds: ^bb53, ^bb58
    %517 = llvm.icmp "slt" %516, %514 : i64
    llvm.cond_br %517, ^bb55, ^bb59
  ^bb55:  // pred: ^bb54
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.mlir.constant(2 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%518 : i64)
  ^bb56(%521: i64):  // 2 preds: ^bb55, ^bb57
    %522 = llvm.icmp "slt" %521, %519 : i64
    llvm.cond_br %522, ^bb57, ^bb58
  ^bb57:  // pred: ^bb56
    %523 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %524 = llvm.mlir.constant(2 : index) : i64
    %525 = llvm.mul %511, %524  : i64
    %526 = llvm.mlir.constant(2 : index) : i64
    %527 = llvm.mul %516, %526  : i64
    %528 = llvm.add %525, %527  : i64
    %529 = llvm.add %528, %521  : i64
    %530 = llvm.getelementptr %523[%529] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %531 = llvm.load %530 : !llvm.ptr<f64>
    %532 = llvm.extractvalue %396[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<3 x i64>, array<3 x i64>)> 
    %533 = llvm.add %511, %516  : i64
    %534 = llvm.add %533, %13  : i64
    %535 = llvm.getelementptr %532[%534] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %536 = llvm.load %535 : !llvm.ptr<f64>
    %537 = llvm.fcmp "ogt" %531, %536 : f64
    %538 = llvm.extractvalue %507[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mul %511, %539  : i64
    %541 = llvm.mlir.constant(2 : index) : i64
    %542 = llvm.mul %516, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.add %543, %521  : i64
    %545 = llvm.getelementptr %538[%544] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %537, %545 : !llvm.ptr<i1>
    %546 = llvm.add %521, %520  : i64
    llvm.br ^bb56(%546 : i64)
  ^bb58:  // pred: ^bb56
    %547 = llvm.add %516, %515  : i64
    llvm.br ^bb54(%547 : i64)
  ^bb59:  // pred: ^bb54
    %548 = llvm.add %511, %510  : i64
    llvm.br ^bb52(%548 : i64)
  ^bb60:  // pred: ^bb52
    llvm.return %507 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(3 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(0 : i64) : i64
    %75 = llvm.getelementptr %48[%74] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %75 : !llvm.ptr<ptr<i8>>
    %76 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %76 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<66 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<66 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

