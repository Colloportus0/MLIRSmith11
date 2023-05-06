module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<3xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<3 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(-1 : i64) : i64
    %16 = llvm.mlir.constant(0 : i32) : i32
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<3 x i64>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.insertvalue %24, %23[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(3 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %31 = llvm.bitcast %30 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %37 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<3 x i64>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<3 x i64>> to !llvm.ptr<i64>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(3 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.null : !llvm.ptr<i32>
    %54 = llvm.getelementptr %53[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %55 = llvm.ptrtoint %54 : !llvm.ptr<i32> to i64
    %56 = llvm.mlir.constant(16 : index) : i64
    %57 = llvm.add %55, %56  : i64
    %58 = llvm.call @malloc(%57) : (i64) -> !llvm.ptr<i8>
    %59 = llvm.bitcast %58 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr<i32> to i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.sub %56, %61  : i64
    %63 = llvm.add %60, %62  : i64
    %64 = llvm.urem %63, %56  : i64
    %65 = llvm.sub %63, %64  : i64
    %66 = llvm.inttoptr %65 : i64 to !llvm.ptr<i32>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %68 = llvm.insertvalue %59, %67[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %48, %71[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %49, %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %50, %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %51, %74[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %49, %75[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %50, %76[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %51, %77[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %52, %78[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%80 : i64)
  ^bb1(%83: i64):  // 2 preds: ^bb0, ^bb11
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %85 = llvm.mlir.constant(0 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%85 : i64)
  ^bb3(%88: i64):  // 2 preds: ^bb2, ^bb10
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%90 : i64)
  ^bb5(%93: i64):  // 2 preds: ^bb4, ^bb9
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%95 : i64)
  ^bb7(%98: i64):  // 2 preds: ^bb6, ^bb8
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %100 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.add %83, %88  : i64
    %102 = llvm.add %101, %93  : i64
    %103 = llvm.add %102, %98  : i64
    %104 = llvm.getelementptr %100[%103] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %105 = llvm.load %104 : !llvm.ptr<i32>
    %106 = llvm.sub %16, %105  : i32
    %107 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.add %83, %88  : i64
    %109 = llvm.add %108, %93  : i64
    %110 = llvm.add %109, %98  : i64
    %111 = llvm.getelementptr %107[%110] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %106, %111 : !llvm.ptr<i32>
    %112 = llvm.add %98, %97  : i64
    llvm.br ^bb7(%112 : i64)
  ^bb9:  // pred: ^bb7
    %113 = llvm.add %93, %92  : i64
    llvm.br ^bb5(%113 : i64)
  ^bb10:  // pred: ^bb5
    %114 = llvm.add %88, %87  : i64
    llvm.br ^bb3(%114 : i64)
  ^bb11:  // pred: ^bb3
    %115 = llvm.add %83, %82  : i64
    llvm.br ^bb1(%115 : i64)
  ^bb12:  // pred: ^bb1
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.null : !llvm.ptr<i32>
    %122 = llvm.getelementptr %121[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.ptrtoint %122 : !llvm.ptr<i32> to i64
    %124 = llvm.mlir.constant(16 : index) : i64
    %125 = llvm.add %123, %124  : i64
    %126 = llvm.call @malloc(%125) : (i64) -> !llvm.ptr<i8>
    %127 = llvm.bitcast %126 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %128 = llvm.ptrtoint %127 : !llvm.ptr<i32> to i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.sub %124, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.urem %131, %124  : i64
    %133 = llvm.sub %131, %132  : i64
    %134 = llvm.inttoptr %133 : i64 to !llvm.ptr<i32>
    %135 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %136 = llvm.insertvalue %127, %135[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %134, %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.insertvalue %138, %137[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %116, %139[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %117, %140[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %118, %141[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %119, %142[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %117, %143[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %118, %144[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %119, %145[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %120, %146[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%148 : i64)
  ^bb13(%151: i64):  // 2 preds: ^bb12, ^bb23
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%153 : i64)
  ^bb15(%156: i64):  // 2 preds: ^bb14, ^bb22
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%158 : i64)
  ^bb17(%161: i64):  // 2 preds: ^bb16, ^bb21
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%163 : i64)
  ^bb19(%166: i64):  // 2 preds: ^bb18, ^bb20
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %168 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.add %151, %156  : i64
    %170 = llvm.add %169, %161  : i64
    %171 = llvm.add %170, %166  : i64
    %172 = llvm.getelementptr %168[%171] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %173 = llvm.load %172 : !llvm.ptr<i32>
    %174 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.add %151, %156  : i64
    %176 = llvm.add %175, %161  : i64
    %177 = llvm.add %176, %166  : i64
    %178 = llvm.getelementptr %174[%177] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %179 = llvm.load %178 : !llvm.ptr<i32>
    %180 = llvm.icmp "slt" %173, %179 : i32
    %181 = llvm.select %180, %173, %179 : i1, i32
    %182 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.add %151, %156  : i64
    %184 = llvm.add %183, %161  : i64
    %185 = llvm.add %184, %166  : i64
    %186 = llvm.getelementptr %182[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %181, %186 : !llvm.ptr<i32>
    %187 = llvm.add %166, %165  : i64
    llvm.br ^bb19(%187 : i64)
  ^bb21:  // pred: ^bb19
    %188 = llvm.add %161, %160  : i64
    llvm.br ^bb17(%188 : i64)
  ^bb22:  // pred: ^bb17
    %189 = llvm.add %156, %155  : i64
    llvm.br ^bb15(%189 : i64)
  ^bb23:  // pred: ^bb15
    %190 = llvm.add %151, %150  : i64
    llvm.br ^bb13(%190 : i64)
  ^bb24:  // pred: ^bb13
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.null : !llvm.ptr<i64>
    %196 = llvm.getelementptr %195[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
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
    %209 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %210 = llvm.insertvalue %201, %209[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %211 = llvm.insertvalue %208, %210[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.insertvalue %212, %211[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %214 = llvm.insertvalue %191, %213[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %215 = llvm.insertvalue %192, %214[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %216 = llvm.insertvalue %193, %215[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.insertvalue %192, %216[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %218 = llvm.insertvalue %193, %217[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %219 = llvm.insertvalue %194, %218[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%220 : i64)
  ^bb25(%223: i64):  // 2 preds: ^bb24, ^bb32
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%225 : i64)
  ^bb27(%228: i64):  // 2 preds: ^bb26, ^bb31
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%230 : i64)
  ^bb29(%233: i64):  // 2 preds: ^bb28, ^bb30
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %235 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %236 = llvm.add %223, %228  : i64
    %237 = llvm.add %236, %233  : i64
    %238 = llvm.getelementptr %235[%237] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %15, %238 : !llvm.ptr<i64>
    %239 = llvm.add %233, %232  : i64
    llvm.br ^bb29(%239 : i64)
  ^bb31:  // pred: ^bb29
    %240 = llvm.add %228, %227  : i64
    llvm.br ^bb27(%240 : i64)
  ^bb32:  // pred: ^bb27
    %241 = llvm.add %223, %222  : i64
    llvm.br ^bb25(%241 : i64)
  ^bb33:  // pred: ^bb25
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%242 : i64)
  ^bb34(%245: i64):  // 2 preds: ^bb33, ^bb44
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%247 : i64)
  ^bb36(%250: i64):  // 2 preds: ^bb35, ^bb43
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%252 : i64)
  ^bb38(%255: i64):  // 2 preds: ^bb37, ^bb42
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%257 : i64)
  ^bb40(%260: i64):  // 2 preds: ^bb39, ^bb41
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %262 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.add %245, %250  : i64
    %264 = llvm.add %263, %255  : i64
    %265 = llvm.add %264, %260  : i64
    %266 = llvm.getelementptr %262[%265] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %267 = llvm.load %266 : !llvm.ptr<i32>
    %268 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %269 = llvm.add %245, %255  : i64
    %270 = llvm.add %269, %260  : i64
    %271 = llvm.getelementptr %268[%270] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %272 = llvm.load %271 : !llvm.ptr<i64>
    %273 = llvm.icmp "slt" %272, %14 : i64
    %274 = llvm.select %273, %14, %272 : i1, i64
    %275 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.add %245, %274  : i64
    %277 = llvm.add %276, %255  : i64
    %278 = llvm.add %277, %260  : i64
    %279 = llvm.getelementptr %275[%278] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %280 = llvm.load %279 : !llvm.ptr<i32>
    %281 = llvm.icmp "sgt" %267, %280 : i32
    %282 = llvm.select %281, %250, %274 : i1, i64
    %283 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %284 = llvm.add %245, %255  : i64
    %285 = llvm.add %284, %260  : i64
    %286 = llvm.getelementptr %283[%285] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %282, %286 : !llvm.ptr<i64>
    %287 = llvm.add %260, %259  : i64
    llvm.br ^bb40(%287 : i64)
  ^bb42:  // pred: ^bb40
    %288 = llvm.add %255, %254  : i64
    llvm.br ^bb38(%288 : i64)
  ^bb43:  // pred: ^bb38
    %289 = llvm.add %250, %249  : i64
    llvm.br ^bb36(%289 : i64)
  ^bb44:  // pred: ^bb36
    %290 = llvm.add %245, %244  : i64
    llvm.br ^bb34(%290 : i64)
  ^bb45:  // pred: ^bb34
    %291 = llvm.mlir.constant(3 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.mlir.null : !llvm.ptr<i64>
    %294 = llvm.getelementptr %293[%291] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %295 = llvm.ptrtoint %294 : !llvm.ptr<i64> to i64
    %296 = llvm.mlir.constant(16 : index) : i64
    %297 = llvm.add %295, %296  : i64
    %298 = llvm.call @malloc(%297) : (i64) -> !llvm.ptr<i8>
    %299 = llvm.bitcast %298 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i64> to i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.sub %296, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.urem %303, %296  : i64
    %305 = llvm.sub %303, %304  : i64
    %306 = llvm.inttoptr %305 : i64 to !llvm.ptr<i64>
    %307 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %308 = llvm.insertvalue %299, %307[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.insertvalue %306, %308[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.insertvalue %310, %309[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %312 = llvm.insertvalue %291, %311[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %313 = llvm.insertvalue %292, %312[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(3 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%314 : i64)
  ^bb46(%317: i64):  // 2 preds: ^bb45, ^bb47
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %319 = llvm.extractvalue %313[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.getelementptr %319[%317] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %320 : !llvm.ptr<i64>
    %321 = llvm.add %317, %316  : i64
    llvm.br ^bb46(%321 : i64)
  ^bb48:  // pred: ^bb46
    %322 = llvm.mlir.constant(3 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.null : !llvm.ptr<i64>
    %325 = llvm.getelementptr %324[%322] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %326 = llvm.ptrtoint %325 : !llvm.ptr<i64> to i64
    %327 = llvm.mlir.constant(16 : index) : i64
    %328 = llvm.add %326, %327  : i64
    %329 = llvm.call @malloc(%328) : (i64) -> !llvm.ptr<i8>
    %330 = llvm.bitcast %329 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %331 = llvm.ptrtoint %330 : !llvm.ptr<i64> to i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.sub %327, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.urem %334, %327  : i64
    %336 = llvm.sub %334, %335  : i64
    %337 = llvm.inttoptr %336 : i64 to !llvm.ptr<i64>
    %338 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %339 = llvm.insertvalue %330, %338[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.insertvalue %337, %339[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.insertvalue %341, %340[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %343 = llvm.insertvalue %322, %342[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %344 = llvm.insertvalue %323, %343[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(3 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%345 : i64)
  ^bb49(%348: i64):  // 2 preds: ^bb48, ^bb50
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %350 = llvm.extractvalue %313[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.getelementptr %350[%348] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %352 = llvm.load %351 : !llvm.ptr<i64>
    %353 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %354 = llvm.load %353 : !llvm.ptr<i64>
    %355 = llvm.mul %352, %354  : i64
    %356 = llvm.extractvalue %344[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.getelementptr %356[%348] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %355, %357 : !llvm.ptr<i64>
    %358 = llvm.add %348, %347  : i64
    llvm.br ^bb49(%358 : i64)
  ^bb51:  // pred: ^bb49
    %359 = llvm.mlir.constant(3 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.null : !llvm.ptr<i1>
    %362 = llvm.getelementptr %361[%359] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %363 = llvm.ptrtoint %362 : !llvm.ptr<i1> to i64
    %364 = llvm.mlir.constant(16 : index) : i64
    %365 = llvm.add %363, %364  : i64
    %366 = llvm.call @malloc(%365) : (i64) -> !llvm.ptr<i8>
    %367 = llvm.bitcast %366 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %368 = llvm.ptrtoint %367 : !llvm.ptr<i1> to i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.sub %364, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.urem %371, %364  : i64
    %373 = llvm.sub %371, %372  : i64
    %374 = llvm.inttoptr %373 : i64 to !llvm.ptr<i1>
    %375 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %376 = llvm.insertvalue %367, %375[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.insertvalue %374, %376[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.insertvalue %378, %377[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.insertvalue %359, %379[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.insertvalue %360, %380[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.mlir.constant(0 : index) : i64
    %383 = llvm.mlir.constant(3 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%382 : i64)
  ^bb52(%385: i64):  // 2 preds: ^bb51, ^bb53
    %386 = llvm.icmp "slt" %385, %383 : i64
    llvm.cond_br %386, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %387 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.getelementptr %387[%385] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %389 = llvm.load %388 : !llvm.ptr<i64>
    %390 = llvm.extractvalue %344[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %391 = llvm.getelementptr %390[%385] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %392 = llvm.load %391 : !llvm.ptr<i64>
    %393 = llvm.icmp "eq" %389, %392 : i64
    %394 = llvm.extractvalue %381[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %395 = llvm.getelementptr %394[%385] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %393, %395 : !llvm.ptr<i1>
    %396 = llvm.add %385, %384  : i64
    llvm.br ^bb52(%396 : i64)
  ^bb54:  // pred: ^bb52
    %397 = llvm.mlir.constant(3 : index) : i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.mlir.null : !llvm.ptr<i64>
    %400 = llvm.getelementptr %399[%397] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %401 = llvm.ptrtoint %400 : !llvm.ptr<i64> to i64
    %402 = llvm.mlir.constant(16 : index) : i64
    %403 = llvm.add %401, %402  : i64
    %404 = llvm.call @malloc(%403) : (i64) -> !llvm.ptr<i8>
    %405 = llvm.bitcast %404 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %406 = llvm.ptrtoint %405 : !llvm.ptr<i64> to i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.sub %402, %407  : i64
    %409 = llvm.add %406, %408  : i64
    %410 = llvm.urem %409, %402  : i64
    %411 = llvm.sub %409, %410  : i64
    %412 = llvm.inttoptr %411 : i64 to !llvm.ptr<i64>
    %413 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %414 = llvm.insertvalue %405, %413[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.insertvalue %412, %414[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.insertvalue %416, %415[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %418 = llvm.insertvalue %397, %417[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %419 = llvm.insertvalue %398, %418[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.mlir.constant(3 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%420 : i64)
  ^bb55(%423: i64):  // 2 preds: ^bb54, ^bb56
    %424 = llvm.icmp "slt" %423, %421 : i64
    llvm.cond_br %424, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %425 = llvm.extractvalue %381[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.getelementptr %425[%423] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %427 = llvm.load %426 : !llvm.ptr<i1>
    %428 = llvm.extractvalue %313[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.getelementptr %428[%423] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %430 = llvm.load %429 : !llvm.ptr<i64>
    %431 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.getelementptr %431[%423] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %433 = llvm.load %432 : !llvm.ptr<i64>
    %434 = llvm.select %427, %430, %433 : i1, i64
    %435 = llvm.extractvalue %419[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %436 = llvm.getelementptr %435[%423] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %434, %436 : !llvm.ptr<i64>
    %437 = llvm.add %423, %422  : i64
    llvm.br ^bb55(%437 : i64)
  ^bb57:  // pred: ^bb55
    %438 = llvm.extractvalue %419[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %439 = llvm.getelementptr %438[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %440 = llvm.load %439 : !llvm.ptr<i64>
    %441 = llvm.extractvalue %419[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.getelementptr %441[%18] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %443 = llvm.load %442 : !llvm.ptr<i64>
    %444 = llvm.extractvalue %419[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %445 = llvm.getelementptr %444[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %446 = llvm.load %445 : !llvm.ptr<i64>
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mul %446, %443  : i64
    %449 = llvm.mul %448, %440  : i64
    %450 = llvm.mlir.null : !llvm.ptr<i64>
    %451 = llvm.getelementptr %450[%449] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %452 = llvm.ptrtoint %451 : !llvm.ptr<i64> to i64
    %453 = llvm.mlir.constant(16 : index) : i64
    %454 = llvm.add %452, %453  : i64
    %455 = llvm.call @malloc(%454) : (i64) -> !llvm.ptr<i8>
    %456 = llvm.bitcast %455 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %457 = llvm.ptrtoint %456 : !llvm.ptr<i64> to i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.sub %453, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.urem %460, %453  : i64
    %462 = llvm.sub %460, %461  : i64
    %463 = llvm.inttoptr %462 : i64 to !llvm.ptr<i64>
    %464 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %465 = llvm.insertvalue %456, %464[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %466 = llvm.insertvalue %463, %465[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.insertvalue %467, %466[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %469 = llvm.insertvalue %440, %468[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %470 = llvm.insertvalue %443, %469[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %471 = llvm.insertvalue %446, %470[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %472 = llvm.insertvalue %448, %471[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %473 = llvm.insertvalue %446, %472[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %474 = llvm.insertvalue %447, %473[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%475 : i64)
  ^bb58(%477: i64):  // 2 preds: ^bb57, ^bb65
    %478 = llvm.icmp "slt" %477, %440 : i64
    llvm.cond_br %478, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %479 = llvm.mlir.constant(0 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%479 : i64)
  ^bb60(%481: i64):  // 2 preds: ^bb59, ^bb64
    %482 = llvm.icmp "slt" %481, %443 : i64
    llvm.cond_br %482, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%483 : i64)
  ^bb62(%485: i64):  // 2 preds: ^bb61, ^bb63
    %486 = llvm.icmp "slt" %485, %446 : i64
    llvm.cond_br %486, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %487 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %488 = llvm.add %17, %17  : i64
    %489 = llvm.add %488, %17  : i64
    %490 = llvm.getelementptr %487[%489] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %491 = llvm.load %490 : !llvm.ptr<i64>
    %492 = llvm.extractvalue %474[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %493 = llvm.extractvalue %474[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %494 = llvm.mul %477, %493  : i64
    %495 = llvm.extractvalue %474[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %496 = llvm.mul %481, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.add %497, %485  : i64
    %499 = llvm.getelementptr %492[%498] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %491, %499 : !llvm.ptr<i64>
    %500 = llvm.add %485, %484  : i64
    llvm.br ^bb62(%500 : i64)
  ^bb64:  // pred: ^bb62
    %501 = llvm.add %481, %480  : i64
    llvm.br ^bb60(%501 : i64)
  ^bb65:  // pred: ^bb60
    %502 = llvm.add %477, %476  : i64
    llvm.br ^bb58(%502 : i64)
  ^bb66:  // pred: ^bb58
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.null : !llvm.ptr<i32>
    %508 = llvm.getelementptr %507[%503] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %509 = llvm.ptrtoint %508 : !llvm.ptr<i32> to i64
    %510 = llvm.mlir.constant(16 : index) : i64
    %511 = llvm.add %509, %510  : i64
    %512 = llvm.call @malloc(%511) : (i64) -> !llvm.ptr<i8>
    %513 = llvm.bitcast %512 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %514 = llvm.ptrtoint %513 : !llvm.ptr<i32> to i64
    %515 = llvm.mlir.constant(1 : index) : i64
    %516 = llvm.sub %510, %515  : i64
    %517 = llvm.add %514, %516  : i64
    %518 = llvm.urem %517, %510  : i64
    %519 = llvm.sub %517, %518  : i64
    %520 = llvm.inttoptr %519 : i64 to !llvm.ptr<i32>
    %521 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %522 = llvm.insertvalue %513, %521[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %523 = llvm.insertvalue %520, %522[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.insertvalue %524, %523[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %526 = llvm.insertvalue %503, %525[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %527 = llvm.insertvalue %504, %526[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %528 = llvm.insertvalue %505, %527[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %529 = llvm.insertvalue %504, %528[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %530 = llvm.insertvalue %505, %529[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %531 = llvm.insertvalue %506, %530[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%532 : i64)
  ^bb67(%534: i64):  // 2 preds: ^bb66, ^bb74
    %535 = llvm.icmp "slt" %534, %440 : i64
    llvm.cond_br %535, ^bb68, ^bb75
  ^bb68:  // pred: ^bb67
    %536 = llvm.mlir.constant(0 : index) : i64
    %537 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%536 : i64)
  ^bb69(%538: i64):  // 2 preds: ^bb68, ^bb73
    %539 = llvm.icmp "slt" %538, %443 : i64
    llvm.cond_br %539, ^bb70, ^bb74
  ^bb70:  // pred: ^bb69
    %540 = llvm.mlir.constant(0 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%540 : i64)
  ^bb71(%542: i64):  // 2 preds: ^bb70, ^bb72
    %543 = llvm.icmp "slt" %542, %446 : i64
    llvm.cond_br %543, ^bb72, ^bb73
  ^bb72:  // pred: ^bb71
    %544 = llvm.extractvalue %474[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %545 = llvm.extractvalue %474[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %546 = llvm.mul %534, %545  : i64
    %547 = llvm.extractvalue %474[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %548 = llvm.mul %538, %547  : i64
    %549 = llvm.add %546, %548  : i64
    %550 = llvm.add %549, %542  : i64
    %551 = llvm.getelementptr %544[%550] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %552 = llvm.load %551 : !llvm.ptr<i64>
    %553 = llvm.trunc %552 : i64 to i32
    %554 = llvm.extractvalue %531[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %555 = llvm.add %534, %538  : i64
    %556 = llvm.add %555, %542  : i64
    %557 = llvm.getelementptr %554[%556] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %553, %557 : !llvm.ptr<i32>
    %558 = llvm.add %542, %541  : i64
    llvm.br ^bb71(%558 : i64)
  ^bb73:  // pred: ^bb71
    %559 = llvm.add %538, %537  : i64
    llvm.br ^bb69(%559 : i64)
  ^bb74:  // pred: ^bb69
    %560 = llvm.add %534, %533  : i64
    llvm.br ^bb67(%560 : i64)
  ^bb75:  // pred: ^bb67
    %561 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %562 = llvm.insertvalue %147, %561[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %563 = llvm.insertvalue %531, %562[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %563 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %109 : !llvm.ptr<ptr<i8>>
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

