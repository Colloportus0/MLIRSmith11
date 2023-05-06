module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v5_0"]} {
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
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.mlir.constant(-1 : i64) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i64>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.insertvalue %24, %23[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %26 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %51 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %52 = llvm.bitcast %51 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %53 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %54 = llvm.insertvalue %52, %53[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.insertvalue %52, %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(0 : index) : i64
    %57 = llvm.insertvalue %56, %55[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(4 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.null : !llvm.ptr<i64>
    %67 = llvm.getelementptr %66[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %68 = llvm.ptrtoint %67 : !llvm.ptr<i64> to i64
    %69 = llvm.mlir.constant(16 : index) : i64
    %70 = llvm.add %68, %69  : i64
    %71 = llvm.call @malloc(%70) : (i64) -> !llvm.ptr<i8>
    %72 = llvm.bitcast %71 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %73 = llvm.ptrtoint %72 : !llvm.ptr<i64> to i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.sub %69, %74  : i64
    %76 = llvm.add %73, %75  : i64
    %77 = llvm.urem %76, %69  : i64
    %78 = llvm.sub %76, %77  : i64
    %79 = llvm.inttoptr %78 : i64 to !llvm.ptr<i64>
    %80 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %81 = llvm.insertvalue %72, %80[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.insertvalue %79, %81[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.insertvalue %83, %82[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %85 = llvm.insertvalue %62, %84[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %86 = llvm.insertvalue %63, %85[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.insertvalue %64, %86[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.insertvalue %63, %87[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.insertvalue %64, %88[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %90 = llvm.insertvalue %65, %89[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%91 : i64)
  ^bb1(%94: i64):  // 2 preds: ^bb0, ^bb8
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%96 : i64)
  ^bb3(%99: i64):  // 2 preds: ^bb2, ^bb7
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%101 : i64)
  ^bb5(%104: i64):  // 2 preds: ^bb4, ^bb6
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %106 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.add %94, %99  : i64
    %108 = llvm.add %107, %104  : i64
    %109 = llvm.getelementptr %106[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %17, %109 : !llvm.ptr<i64>
    %110 = llvm.add %104, %103  : i64
    llvm.br ^bb5(%110 : i64)
  ^bb7:  // pred: ^bb5
    %111 = llvm.add %99, %98  : i64
    llvm.br ^bb3(%111 : i64)
  ^bb8:  // pred: ^bb3
    %112 = llvm.add %94, %93  : i64
    llvm.br ^bb1(%112 : i64)
  ^bb9:  // pred: ^bb1
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%113 : i64)
  ^bb10(%116: i64):  // 2 preds: ^bb9, ^bb20
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%118 : i64)
  ^bb12(%121: i64):  // 2 preds: ^bb11, ^bb19
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb13, ^bb20
  ^bb13:  // pred: ^bb12
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%123 : i64)
  ^bb14(%126: i64):  // 2 preds: ^bb13, ^bb18
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%128 : i64)
  ^bb16(%131: i64):  // 2 preds: ^bb15, ^bb17
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %133 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.add %116, %121  : i64
    %135 = llvm.add %134, %126  : i64
    %136 = llvm.add %135, %131  : i64
    %137 = llvm.getelementptr %133[%136] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %138 = llvm.load %137 : !llvm.ptr<i32>
    %139 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %140 = llvm.add %116, %121  : i64
    %141 = llvm.add %140, %131  : i64
    %142 = llvm.getelementptr %139[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %143 = llvm.load %142 : !llvm.ptr<i64>
    %144 = llvm.icmp "slt" %143, %16 : i64
    %145 = llvm.select %144, %16, %143 : i1, i64
    %146 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.add %116, %121  : i64
    %148 = llvm.add %147, %145  : i64
    %149 = llvm.add %148, %131  : i64
    %150 = llvm.getelementptr %146[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %151 = llvm.load %150 : !llvm.ptr<i32>
    %152 = llvm.icmp "sgt" %138, %151 : i32
    %153 = llvm.select %152, %126, %145 : i1, i64
    %154 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %155 = llvm.add %116, %121  : i64
    %156 = llvm.add %155, %131  : i64
    %157 = llvm.getelementptr %154[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %153, %157 : !llvm.ptr<i64>
    %158 = llvm.add %131, %130  : i64
    llvm.br ^bb16(%158 : i64)
  ^bb18:  // pred: ^bb16
    %159 = llvm.add %126, %125  : i64
    llvm.br ^bb14(%159 : i64)
  ^bb19:  // pred: ^bb14
    %160 = llvm.add %121, %120  : i64
    llvm.br ^bb12(%160 : i64)
  ^bb20:  // pred: ^bb12
    %161 = llvm.add %116, %115  : i64
    llvm.br ^bb10(%161 : i64)
  ^bb21:  // pred: ^bb10
    %162 = llvm.mlir.constant(4 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.null : !llvm.ptr<i64>
    %165 = llvm.getelementptr %164[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %166 = llvm.ptrtoint %165 : !llvm.ptr<i64> to i64
    %167 = llvm.mlir.constant(16 : index) : i64
    %168 = llvm.add %166, %167  : i64
    %169 = llvm.call @malloc(%168) : (i64) -> !llvm.ptr<i8>
    %170 = llvm.bitcast %169 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %171 = llvm.ptrtoint %170 : !llvm.ptr<i64> to i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.sub %167, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.urem %174, %167  : i64
    %176 = llvm.sub %174, %175  : i64
    %177 = llvm.inttoptr %176 : i64 to !llvm.ptr<i64>
    %178 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %179 = llvm.insertvalue %170, %178[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %177, %179[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.mlir.constant(0 : index) : i64
    %182 = llvm.insertvalue %181, %180[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.insertvalue %162, %182[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.insertvalue %163, %183[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(4 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%185 : i64)
  ^bb22(%188: i64):  // 2 preds: ^bb21, ^bb23
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %190 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.getelementptr %190[%188] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %191 : !llvm.ptr<i64>
    %192 = llvm.add %188, %187  : i64
    llvm.br ^bb22(%192 : i64)
  ^bb24:  // pred: ^bb22
    %193 = llvm.mlir.constant(4 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.null : !llvm.ptr<i64>
    %196 = llvm.getelementptr %195[%193] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %197 = llvm.ptrtoint %196 : !llvm.ptr<i64> to i64
    %198 = llvm.mlir.constant(16 : index) : i64
    %199 = llvm.add %197, %198  : i64
    %200 = llvm.call @malloc(%199) : (i64) -> !llvm.ptr<i8>
    %201 = llvm.bitcast %200 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %202 = llvm.ptrtoint %201 : !llvm.ptr<i64> to i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.sub %198, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.urem %205, %198  : i64
    %207 = llvm.sub %205, %206  : i64
    %208 = llvm.inttoptr %207 : i64 to !llvm.ptr<i64>
    %209 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %210 = llvm.insertvalue %201, %209[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.insertvalue %208, %210[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.insertvalue %212, %211[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.insertvalue %193, %213[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.insertvalue %194, %214[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(4 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%216 : i64)
  ^bb25(%219: i64):  // 2 preds: ^bb24, ^bb26
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %221 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.getelementptr %221[%219] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %223 = llvm.load %222 : !llvm.ptr<i64>
    %224 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %225 = llvm.load %224 : !llvm.ptr<i64>
    %226 = llvm.mul %223, %225  : i64
    %227 = llvm.extractvalue %215[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.getelementptr %227[%219] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %226, %228 : !llvm.ptr<i64>
    %229 = llvm.add %219, %218  : i64
    llvm.br ^bb25(%229 : i64)
  ^bb27:  // pred: ^bb25
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.null : !llvm.ptr<i1>
    %233 = llvm.getelementptr %232[%230] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %234 = llvm.ptrtoint %233 : !llvm.ptr<i1> to i64
    %235 = llvm.mlir.constant(16 : index) : i64
    %236 = llvm.add %234, %235  : i64
    %237 = llvm.call @malloc(%236) : (i64) -> !llvm.ptr<i8>
    %238 = llvm.bitcast %237 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %239 = llvm.ptrtoint %238 : !llvm.ptr<i1> to i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.sub %235, %240  : i64
    %242 = llvm.add %239, %241  : i64
    %243 = llvm.urem %242, %235  : i64
    %244 = llvm.sub %242, %243  : i64
    %245 = llvm.inttoptr %244 : i64 to !llvm.ptr<i1>
    %246 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %247 = llvm.insertvalue %238, %246[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %245, %247[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.insertvalue %249, %248[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %230, %250[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.insertvalue %231, %251[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%253 : i64)
  ^bb28(%256: i64):  // 2 preds: ^bb27, ^bb29
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %258 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.getelementptr %258[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %260 = llvm.load %259 : !llvm.ptr<i64>
    %261 = llvm.extractvalue %215[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%256] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %263 = llvm.load %262 : !llvm.ptr<i64>
    %264 = llvm.icmp "eq" %260, %263 : i64
    %265 = llvm.extractvalue %252[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %266 = llvm.getelementptr %265[%256] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %264, %266 : !llvm.ptr<i1>
    %267 = llvm.add %256, %255  : i64
    llvm.br ^bb28(%267 : i64)
  ^bb30:  // pred: ^bb28
    %268 = llvm.mlir.constant(4 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.null : !llvm.ptr<i64>
    %271 = llvm.getelementptr %270[%268] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %272 = llvm.ptrtoint %271 : !llvm.ptr<i64> to i64
    %273 = llvm.mlir.constant(16 : index) : i64
    %274 = llvm.add %272, %273  : i64
    %275 = llvm.call @malloc(%274) : (i64) -> !llvm.ptr<i8>
    %276 = llvm.bitcast %275 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %277 = llvm.ptrtoint %276 : !llvm.ptr<i64> to i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.sub %273, %278  : i64
    %280 = llvm.add %277, %279  : i64
    %281 = llvm.urem %280, %273  : i64
    %282 = llvm.sub %280, %281  : i64
    %283 = llvm.inttoptr %282 : i64 to !llvm.ptr<i64>
    %284 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %285 = llvm.insertvalue %276, %284[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %283, %285[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.insertvalue %287, %286[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.insertvalue %268, %288[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.insertvalue %269, %289[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.mlir.constant(0 : index) : i64
    %292 = llvm.mlir.constant(4 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%291 : i64)
  ^bb31(%294: i64):  // 2 preds: ^bb30, ^bb32
    %295 = llvm.icmp "slt" %294, %292 : i64
    llvm.cond_br %295, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %296 = llvm.extractvalue %252[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.getelementptr %296[%294] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %298 = llvm.load %297 : !llvm.ptr<i1>
    %299 = llvm.extractvalue %184[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.getelementptr %299[%294] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %301 = llvm.load %300 : !llvm.ptr<i64>
    %302 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %303 = llvm.getelementptr %302[%294] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %304 = llvm.load %303 : !llvm.ptr<i64>
    %305 = llvm.select %298, %301, %304 : i1, i64
    %306 = llvm.extractvalue %290[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.getelementptr %306[%294] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %305, %307 : !llvm.ptr<i64>
    %308 = llvm.add %294, %293  : i64
    llvm.br ^bb31(%308 : i64)
  ^bb33:  // pred: ^bb31
    %309 = llvm.extractvalue %290[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.getelementptr %309[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %311 = llvm.load %310 : !llvm.ptr<i64>
    %312 = llvm.extractvalue %290[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %313 = llvm.getelementptr %312[%18] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %314 = llvm.load %313 : !llvm.ptr<i64>
    %315 = llvm.extractvalue %290[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %316 = llvm.getelementptr %315[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %317 = llvm.load %316 : !llvm.ptr<i64>
    %318 = llvm.extractvalue %290[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.getelementptr %318[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %320 = llvm.load %319 : !llvm.ptr<i64>
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mul %320, %317  : i64
    %323 = llvm.mul %322, %314  : i64
    %324 = llvm.mul %323, %311  : i64
    %325 = llvm.mlir.null : !llvm.ptr<i64>
    %326 = llvm.getelementptr %325[%324] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i64> to i64
    %328 = llvm.mlir.constant(16 : index) : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.bitcast %330 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<i64> to i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.sub %328, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.urem %335, %328  : i64
    %337 = llvm.sub %335, %336  : i64
    %338 = llvm.inttoptr %337 : i64 to !llvm.ptr<i64>
    %339 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %340 = llvm.insertvalue %331, %339[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %338, %340[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.insertvalue %342, %341[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %311, %343[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %314, %344[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %317, %345[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %320, %346[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %323, %347[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %322, %348[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %320, %349[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %321, %350[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%352 : i64)
  ^bb34(%354: i64):  // 2 preds: ^bb33, ^bb44
    %355 = llvm.icmp "slt" %354, %311 : i64
    llvm.cond_br %355, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%356 : i64)
  ^bb36(%358: i64):  // 2 preds: ^bb35, ^bb43
    %359 = llvm.icmp "slt" %358, %314 : i64
    llvm.cond_br %359, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%360 : i64)
  ^bb38(%362: i64):  // 2 preds: ^bb37, ^bb42
    %363 = llvm.icmp "slt" %362, %317 : i64
    llvm.cond_br %363, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%364 : i64)
  ^bb40(%366: i64):  // 2 preds: ^bb39, ^bb41
    %367 = llvm.icmp "slt" %366, %320 : i64
    llvm.cond_br %367, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %368 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %369 = llvm.add %15, %15  : i64
    %370 = llvm.add %369, %15  : i64
    %371 = llvm.getelementptr %368[%370] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %372 = llvm.load %371 : !llvm.ptr<i64>
    %373 = llvm.extractvalue %351[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.extractvalue %351[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.mul %354, %374  : i64
    %376 = llvm.extractvalue %351[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mul %358, %376  : i64
    %378 = llvm.add %375, %377  : i64
    %379 = llvm.extractvalue %351[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.mul %362, %379  : i64
    %381 = llvm.add %378, %380  : i64
    %382 = llvm.add %381, %366  : i64
    %383 = llvm.getelementptr %373[%382] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %372, %383 : !llvm.ptr<i64>
    %384 = llvm.add %366, %365  : i64
    llvm.br ^bb40(%384 : i64)
  ^bb42:  // pred: ^bb40
    %385 = llvm.add %362, %361  : i64
    llvm.br ^bb38(%385 : i64)
  ^bb43:  // pred: ^bb38
    %386 = llvm.add %358, %357  : i64
    llvm.br ^bb36(%386 : i64)
  ^bb44:  // pred: ^bb36
    %387 = llvm.add %354, %353  : i64
    llvm.br ^bb34(%387 : i64)
  ^bb45:  // pred: ^bb34
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.null : !llvm.ptr<i64>
    %393 = llvm.getelementptr %392[%388] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %394 = llvm.ptrtoint %393 : !llvm.ptr<i64> to i64
    %395 = llvm.mlir.constant(16 : index) : i64
    %396 = llvm.add %394, %395  : i64
    %397 = llvm.call @malloc(%396) : (i64) -> !llvm.ptr<i8>
    %398 = llvm.bitcast %397 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %399 = llvm.ptrtoint %398 : !llvm.ptr<i64> to i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.sub %395, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.urem %402, %395  : i64
    %404 = llvm.sub %402, %403  : i64
    %405 = llvm.inttoptr %404 : i64 to !llvm.ptr<i64>
    %406 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %407 = llvm.insertvalue %398, %406[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %408 = llvm.insertvalue %405, %407[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.insertvalue %409, %408[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %411 = llvm.insertvalue %388, %410[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %412 = llvm.insertvalue %389, %411[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %413 = llvm.insertvalue %390, %412[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %414 = llvm.insertvalue %389, %413[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %415 = llvm.insertvalue %390, %414[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %416 = llvm.insertvalue %391, %415[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%417 : i64)
  ^bb46(%420: i64):  // 2 preds: ^bb45, ^bb53
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb47, ^bb54
  ^bb47:  // pred: ^bb46
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%422 : i64)
  ^bb48(%425: i64):  // 2 preds: ^bb47, ^bb52
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb49, ^bb53
  ^bb49:  // pred: ^bb48
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%427 : i64)
  ^bb50(%430: i64):  // 2 preds: ^bb49, ^bb51
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb51, ^bb52
  ^bb51:  // pred: ^bb50
    %432 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %433 = llvm.add %420, %425  : i64
    %434 = llvm.add %433, %430  : i64
    %435 = llvm.getelementptr %432[%434] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %436 = llvm.load %435 : !llvm.ptr<i64>
    %437 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %438 = llvm.load %437 : !llvm.ptr<i64>
    %439 = llvm.icmp "slt" %436, %438 : i64
    %440 = llvm.select %439, %438, %436 : i1, i64
    %441 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %442 = llvm.load %441 : !llvm.ptr<i64>
    %443 = llvm.icmp "slt" %440, %442 : i64
    %444 = llvm.select %443, %440, %442 : i1, i64
    %445 = llvm.extractvalue %416[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %446 = llvm.add %420, %425  : i64
    %447 = llvm.add %446, %430  : i64
    %448 = llvm.getelementptr %445[%447] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %444, %448 : !llvm.ptr<i64>
    %449 = llvm.add %430, %429  : i64
    llvm.br ^bb50(%449 : i64)
  ^bb52:  // pred: ^bb50
    %450 = llvm.add %425, %424  : i64
    llvm.br ^bb48(%450 : i64)
  ^bb53:  // pred: ^bb48
    %451 = llvm.add %420, %419  : i64
    llvm.br ^bb46(%451 : i64)
  ^bb54:  // pred: ^bb46
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.null : !llvm.ptr<i64>
    %457 = llvm.getelementptr %456[%452] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i64> to i64
    %459 = llvm.mlir.constant(16 : index) : i64
    %460 = llvm.add %458, %459  : i64
    %461 = llvm.call @malloc(%460) : (i64) -> !llvm.ptr<i8>
    %462 = llvm.bitcast %461 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %463 = llvm.ptrtoint %462 : !llvm.ptr<i64> to i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.sub %459, %464  : i64
    %466 = llvm.add %463, %465  : i64
    %467 = llvm.urem %466, %459  : i64
    %468 = llvm.sub %466, %467  : i64
    %469 = llvm.inttoptr %468 : i64 to !llvm.ptr<i64>
    %470 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %471 = llvm.insertvalue %462, %470[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %472 = llvm.insertvalue %469, %471[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.insertvalue %473, %472[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %475 = llvm.insertvalue %452, %474[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %476 = llvm.insertvalue %453, %475[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %477 = llvm.insertvalue %454, %476[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %478 = llvm.insertvalue %453, %477[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %479 = llvm.insertvalue %454, %478[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %480 = llvm.insertvalue %455, %479[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%481 : i64)
  ^bb55(%484: i64):  // 2 preds: ^bb54, ^bb62
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb56, ^bb63
  ^bb56:  // pred: ^bb55
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%486 : i64)
  ^bb57(%489: i64):  // 2 preds: ^bb56, ^bb61
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb58, ^bb62
  ^bb58:  // pred: ^bb57
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%491 : i64)
  ^bb59(%494: i64):  // 2 preds: ^bb58, ^bb60
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb60, ^bb61
  ^bb60:  // pred: ^bb59
    %496 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %497 = llvm.add %484, %489  : i64
    %498 = llvm.add %497, %494  : i64
    %499 = llvm.getelementptr %496[%498] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %500 = llvm.load %499 : !llvm.ptr<i64>
    %501 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %502 = llvm.add %484, %489  : i64
    %503 = llvm.add %502, %494  : i64
    %504 = llvm.getelementptr %501[%503] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %505 = llvm.load %504 : !llvm.ptr<i64>
    %506 = llvm.mul %500, %505  : i64
    %507 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %508 = llvm.add %484, %489  : i64
    %509 = llvm.add %508, %494  : i64
    %510 = llvm.getelementptr %507[%509] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %506, %510 : !llvm.ptr<i64>
    %511 = llvm.add %494, %493  : i64
    llvm.br ^bb59(%511 : i64)
  ^bb61:  // pred: ^bb59
    %512 = llvm.add %489, %488  : i64
    llvm.br ^bb57(%512 : i64)
  ^bb62:  // pred: ^bb57
    %513 = llvm.add %484, %483  : i64
    llvm.br ^bb55(%513 : i64)
  ^bb63:  // pred: ^bb55
    %514 = llvm.mlir.constant(1 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.mlir.null : !llvm.ptr<i64>
    %520 = llvm.getelementptr %519[%514] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %521 = llvm.ptrtoint %520 : !llvm.ptr<i64> to i64
    %522 = llvm.mlir.constant(16 : index) : i64
    %523 = llvm.add %521, %522  : i64
    %524 = llvm.call @malloc(%523) : (i64) -> !llvm.ptr<i8>
    %525 = llvm.bitcast %524 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %526 = llvm.ptrtoint %525 : !llvm.ptr<i64> to i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.sub %522, %527  : i64
    %529 = llvm.add %526, %528  : i64
    %530 = llvm.urem %529, %522  : i64
    %531 = llvm.sub %529, %530  : i64
    %532 = llvm.inttoptr %531 : i64 to !llvm.ptr<i64>
    %533 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %534 = llvm.insertvalue %525, %533[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.insertvalue %532, %534[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.mlir.constant(0 : index) : i64
    %537 = llvm.insertvalue %536, %535[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %538 = llvm.insertvalue %514, %537[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.insertvalue %515, %538[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %540 = llvm.insertvalue %516, %539[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.insertvalue %517, %540[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.insertvalue %515, %541[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %543 = llvm.insertvalue %516, %542[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.insertvalue %517, %543[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %545 = llvm.insertvalue %518, %544[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %546 = llvm.mlir.constant(0 : index) : i64
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%546 : i64)
  ^bb64(%549: i64):  // 2 preds: ^bb63, ^bb74
    %550 = llvm.icmp "slt" %549, %547 : i64
    llvm.cond_br %550, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %551 = llvm.mlir.constant(0 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%551 : i64)
  ^bb66(%554: i64):  // 2 preds: ^bb65, ^bb73
    %555 = llvm.icmp "slt" %554, %552 : i64
    llvm.cond_br %555, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %556 = llvm.mlir.constant(0 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%556 : i64)
  ^bb68(%559: i64):  // 2 preds: ^bb67, ^bb72
    %560 = llvm.icmp "slt" %559, %557 : i64
    llvm.cond_br %560, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %561 = llvm.mlir.constant(0 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%561 : i64)
  ^bb70(%564: i64):  // 2 preds: ^bb69, ^bb71
    %565 = llvm.icmp "slt" %564, %562 : i64
    llvm.cond_br %565, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %566 = llvm.extractvalue %351[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.extractvalue %351[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %568 = llvm.mul %549, %567  : i64
    %569 = llvm.extractvalue %351[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.mul %554, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.extractvalue %351[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %573 = llvm.mul %559, %572  : i64
    %574 = llvm.add %571, %573  : i64
    %575 = llvm.add %574, %564  : i64
    %576 = llvm.getelementptr %566[%575] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %577 = llvm.load %576 : !llvm.ptr<i64>
    %578 = llvm.extractvalue %480[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %579 = llvm.add %15, %15  : i64
    %580 = llvm.add %579, %15  : i64
    %581 = llvm.getelementptr %578[%580] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %582 = llvm.load %581 : !llvm.ptr<i64>
    %583 = llvm.mul %577, %582  : i64
    %584 = llvm.extractvalue %545[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.add %549, %554  : i64
    %586 = llvm.add %585, %559  : i64
    %587 = llvm.add %586, %564  : i64
    %588 = llvm.getelementptr %584[%587] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %583, %588 : !llvm.ptr<i64>
    %589 = llvm.add %564, %563  : i64
    llvm.br ^bb70(%589 : i64)
  ^bb72:  // pred: ^bb70
    %590 = llvm.add %559, %558  : i64
    llvm.br ^bb68(%590 : i64)
  ^bb73:  // pred: ^bb68
    %591 = llvm.add %554, %553  : i64
    llvm.br ^bb66(%591 : i64)
  ^bb74:  // pred: ^bb66
    %592 = llvm.add %549, %548  : i64
    llvm.br ^bb64(%592 : i64)
  ^bb75:  // pred: ^bb64
    %593 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %594 = llvm.insertvalue %416, %593[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %595 = llvm.insertvalue %545, %594[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %595 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

