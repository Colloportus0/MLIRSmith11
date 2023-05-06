module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0"]} {
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
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(4 : index) : i64
    %43 = llvm.insertvalue %42, %41[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.mlir.null : !llvm.ptr<i64>
    %49 = llvm.getelementptr %48[%46] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %50 = llvm.ptrtoint %49 : !llvm.ptr<i64> to i64
    %51 = llvm.mlir.constant(16 : index) : i64
    %52 = llvm.add %50, %51  : i64
    %53 = llvm.call @malloc(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.bitcast %53 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %55 = llvm.ptrtoint %54 : !llvm.ptr<i64> to i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.sub %51, %56  : i64
    %58 = llvm.add %55, %57  : i64
    %59 = llvm.urem %58, %51  : i64
    %60 = llvm.sub %58, %59  : i64
    %61 = llvm.inttoptr %60 : i64 to !llvm.ptr<i64>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.insertvalue %54, %62[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.insertvalue %46, %66[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.insertvalue %47, %67[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(4 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%69 : i64)
  ^bb1(%72: i64):  // 2 preds: ^bb0, ^bb2
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %74 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.getelementptr %74[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %75 : !llvm.ptr<i64>
    %76 = llvm.add %72, %71  : i64
    llvm.br ^bb1(%76 : i64)
  ^bb3:  // pred: ^bb1
    %77 = llvm.mlir.constant(4 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.null : !llvm.ptr<i64>
    %80 = llvm.getelementptr %79[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %81 = llvm.ptrtoint %80 : !llvm.ptr<i64> to i64
    %82 = llvm.mlir.constant(16 : index) : i64
    %83 = llvm.add %81, %82  : i64
    %84 = llvm.call @malloc(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.bitcast %84 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %86 = llvm.ptrtoint %85 : !llvm.ptr<i64> to i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.sub %82, %87  : i64
    %89 = llvm.add %86, %88  : i64
    %90 = llvm.urem %89, %82  : i64
    %91 = llvm.sub %89, %90  : i64
    %92 = llvm.inttoptr %91 : i64 to !llvm.ptr<i64>
    %93 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %94 = llvm.insertvalue %85, %93[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.insertvalue %92, %94[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.insertvalue %96, %95[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.insertvalue %77, %97[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.insertvalue %78, %98[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(4 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%100 : i64)
  ^bb4(%103: i64):  // 2 preds: ^bb3, ^bb5
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %105 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.getelementptr %105[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %109 = llvm.load %108 : !llvm.ptr<i64>
    %110 = llvm.mul %107, %109  : i64
    %111 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.getelementptr %111[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %112 : !llvm.ptr<i64>
    %113 = llvm.add %103, %102  : i64
    llvm.br ^bb4(%113 : i64)
  ^bb6:  // pred: ^bb4
    %114 = llvm.mlir.constant(4 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.null : !llvm.ptr<i1>
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %118 = llvm.ptrtoint %117 : !llvm.ptr<i1> to i64
    %119 = llvm.mlir.constant(16 : index) : i64
    %120 = llvm.add %118, %119  : i64
    %121 = llvm.call @malloc(%120) : (i64) -> !llvm.ptr<i8>
    %122 = llvm.bitcast %121 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %123 = llvm.ptrtoint %122 : !llvm.ptr<i1> to i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.sub %119, %124  : i64
    %126 = llvm.add %123, %125  : i64
    %127 = llvm.urem %126, %119  : i64
    %128 = llvm.sub %126, %127  : i64
    %129 = llvm.inttoptr %128 : i64 to !llvm.ptr<i1>
    %130 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %131 = llvm.insertvalue %122, %130[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %129, %131[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.insertvalue %133, %132[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.insertvalue %114, %134[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %115, %135[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(4 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%137 : i64)
  ^bb7(%140: i64):  // 2 preds: ^bb6, ^bb8
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %142 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %143 = llvm.getelementptr %142[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %144 = llvm.load %143 : !llvm.ptr<i64>
    %145 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.getelementptr %145[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %147 = llvm.load %146 : !llvm.ptr<i64>
    %148 = llvm.icmp "eq" %144, %147 : i64
    %149 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %149[%140] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %148, %150 : !llvm.ptr<i1>
    %151 = llvm.add %140, %139  : i64
    llvm.br ^bb7(%151 : i64)
  ^bb9:  // pred: ^bb7
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.null : !llvm.ptr<i64>
    %155 = llvm.getelementptr %154[%152] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %156 = llvm.ptrtoint %155 : !llvm.ptr<i64> to i64
    %157 = llvm.mlir.constant(16 : index) : i64
    %158 = llvm.add %156, %157  : i64
    %159 = llvm.call @malloc(%158) : (i64) -> !llvm.ptr<i8>
    %160 = llvm.bitcast %159 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %161 = llvm.ptrtoint %160 : !llvm.ptr<i64> to i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.sub %157, %162  : i64
    %164 = llvm.add %161, %163  : i64
    %165 = llvm.urem %164, %157  : i64
    %166 = llvm.sub %164, %165  : i64
    %167 = llvm.inttoptr %166 : i64 to !llvm.ptr<i64>
    %168 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %169 = llvm.insertvalue %160, %168[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.insertvalue %167, %169[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.insertvalue %171, %170[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %152, %172[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %153, %173[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(4 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%175 : i64)
  ^bb10(%178: i64):  // 2 preds: ^bb9, ^bb11
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %180 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.getelementptr %180[%178] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %182 = llvm.load %181 : !llvm.ptr<i1>
    %183 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.getelementptr %183[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.load %184 : !llvm.ptr<i64>
    %186 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.getelementptr %186[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %188 = llvm.load %187 : !llvm.ptr<i64>
    %189 = llvm.select %182, %185, %188 : i1, i64
    %190 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.getelementptr %190[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %189, %191 : !llvm.ptr<i64>
    %192 = llvm.add %178, %177  : i64
    llvm.br ^bb10(%192 : i64)
  ^bb12:  // pred: ^bb10
    %193 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.getelementptr %193[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %195 = llvm.load %194 : !llvm.ptr<i64>
    %196 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.getelementptr %196[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %198 = llvm.load %197 : !llvm.ptr<i64>
    %199 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.getelementptr %199[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %201 = llvm.load %200 : !llvm.ptr<i64>
    %202 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.getelementptr %202[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %204 = llvm.load %203 : !llvm.ptr<i64>
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mul %204, %201  : i64
    %207 = llvm.mul %206, %198  : i64
    %208 = llvm.mul %207, %195  : i64
    %209 = llvm.mlir.null : !llvm.ptr<i32>
    %210 = llvm.getelementptr %209[%208] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %211 = llvm.ptrtoint %210 : !llvm.ptr<i32> to i64
    %212 = llvm.mlir.constant(16 : index) : i64
    %213 = llvm.add %211, %212  : i64
    %214 = llvm.call @malloc(%213) : (i64) -> !llvm.ptr<i8>
    %215 = llvm.bitcast %214 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %216 = llvm.ptrtoint %215 : !llvm.ptr<i32> to i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.sub %212, %217  : i64
    %219 = llvm.add %216, %218  : i64
    %220 = llvm.urem %219, %212  : i64
    %221 = llvm.sub %219, %220  : i64
    %222 = llvm.inttoptr %221 : i64 to !llvm.ptr<i32>
    %223 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %224 = llvm.insertvalue %215, %223[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %222, %224[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.insertvalue %226, %225[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %195, %227[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %198, %228[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %201, %229[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %204, %230[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %207, %231[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.insertvalue %206, %232[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.insertvalue %204, %233[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %205, %234[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%236 : i64)
  ^bb13(%238: i64):  // 2 preds: ^bb12, ^bb23
    %239 = llvm.icmp "slt" %238, %195 : i64
    llvm.cond_br %239, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%240 : i64)
  ^bb15(%242: i64):  // 2 preds: ^bb14, ^bb22
    %243 = llvm.icmp "slt" %242, %198 : i64
    llvm.cond_br %243, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%244 : i64)
  ^bb17(%246: i64):  // 2 preds: ^bb16, ^bb21
    %247 = llvm.icmp "slt" %246, %201 : i64
    llvm.cond_br %247, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%248 : i64)
  ^bb19(%250: i64):  // 2 preds: ^bb18, ^bb20
    %251 = llvm.icmp "slt" %250, %204 : i64
    llvm.cond_br %251, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %252 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.add %15, %15  : i64
    %254 = llvm.add %253, %15  : i64
    %255 = llvm.add %254, %15  : i64
    %256 = llvm.getelementptr %252[%255] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %257 = llvm.load %256 : !llvm.ptr<i32>
    %258 = llvm.extractvalue %235[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.extractvalue %235[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.mul %238, %259  : i64
    %261 = llvm.extractvalue %235[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.mul %242, %261  : i64
    %263 = llvm.add %260, %262  : i64
    %264 = llvm.extractvalue %235[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mul %246, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.add %266, %250  : i64
    %268 = llvm.getelementptr %258[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %257, %268 : !llvm.ptr<i32>
    %269 = llvm.add %250, %249  : i64
    llvm.br ^bb19(%269 : i64)
  ^bb21:  // pred: ^bb19
    %270 = llvm.add %246, %245  : i64
    llvm.br ^bb17(%270 : i64)
  ^bb22:  // pred: ^bb17
    %271 = llvm.add %242, %241  : i64
    llvm.br ^bb15(%271 : i64)
  ^bb23:  // pred: ^bb15
    %272 = llvm.add %238, %237  : i64
    llvm.br ^bb13(%272 : i64)
  ^bb24:  // pred: ^bb13
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mul %204, %201  : i64
    %275 = llvm.mul %274, %198  : i64
    %276 = llvm.mul %275, %195  : i64
    %277 = llvm.mlir.null : !llvm.ptr<f32>
    %278 = llvm.getelementptr %277[%276] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<f32> to i64
    %280 = llvm.mlir.constant(16 : index) : i64
    %281 = llvm.add %279, %280  : i64
    %282 = llvm.call @malloc(%281) : (i64) -> !llvm.ptr<i8>
    %283 = llvm.bitcast %282 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<f32> to i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.sub %280, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.urem %287, %280  : i64
    %289 = llvm.sub %287, %288  : i64
    %290 = llvm.inttoptr %289 : i64 to !llvm.ptr<f32>
    %291 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %292 = llvm.insertvalue %283, %291[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %290, %292[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.insertvalue %294, %293[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %195, %295[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %198, %296[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %201, %297[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %204, %298[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %275, %299[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %274, %300[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %204, %301[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %273, %302[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%304 : i64)
  ^bb25(%306: i64):  // 2 preds: ^bb24, ^bb35
    %307 = llvm.icmp "slt" %306, %195 : i64
    llvm.cond_br %307, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%308 : i64)
  ^bb27(%310: i64):  // 2 preds: ^bb26, ^bb34
    %311 = llvm.icmp "slt" %310, %198 : i64
    llvm.cond_br %311, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%312 : i64)
  ^bb29(%314: i64):  // 2 preds: ^bb28, ^bb33
    %315 = llvm.icmp "slt" %314, %201 : i64
    llvm.cond_br %315, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%316 : i64)
  ^bb31(%318: i64):  // 2 preds: ^bb30, ^bb32
    %319 = llvm.icmp "slt" %318, %204 : i64
    llvm.cond_br %319, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %320 = llvm.extractvalue %235[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.extractvalue %235[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.mul %306, %321  : i64
    %323 = llvm.extractvalue %235[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.mul %310, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.extractvalue %235[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.mul %314, %326  : i64
    %328 = llvm.add %325, %327  : i64
    %329 = llvm.add %328, %318  : i64
    %330 = llvm.getelementptr %320[%329] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %331 = llvm.load %330 : !llvm.ptr<i32>
    %332 = llvm.sitofp %331 : i32 to f32
    %333 = llvm.extractvalue %303[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.extractvalue %303[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.mul %306, %334  : i64
    %336 = llvm.extractvalue %303[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.mul %310, %336  : i64
    %338 = llvm.add %335, %337  : i64
    %339 = llvm.extractvalue %303[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.mul %314, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.add %341, %318  : i64
    %343 = llvm.getelementptr %333[%342] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %332, %343 : !llvm.ptr<f32>
    %344 = llvm.add %318, %317  : i64
    llvm.br ^bb31(%344 : i64)
  ^bb33:  // pred: ^bb31
    %345 = llvm.add %314, %313  : i64
    llvm.br ^bb29(%345 : i64)
  ^bb34:  // pred: ^bb29
    %346 = llvm.add %310, %309  : i64
    llvm.br ^bb27(%346 : i64)
  ^bb35:  // pred: ^bb27
    %347 = llvm.add %306, %305  : i64
    llvm.br ^bb25(%347 : i64)
  ^bb36:  // pred: ^bb25
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mul %204, %201  : i64
    %350 = llvm.mul %349, %198  : i64
    %351 = llvm.mul %350, %195  : i64
    %352 = llvm.mlir.null : !llvm.ptr<f32>
    %353 = llvm.getelementptr %352[%351] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<f32> to i64
    %355 = llvm.mlir.constant(16 : index) : i64
    %356 = llvm.add %354, %355  : i64
    %357 = llvm.call @malloc(%356) : (i64) -> !llvm.ptr<i8>
    %358 = llvm.bitcast %357 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<f32> to i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.sub %355, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.urem %362, %355  : i64
    %364 = llvm.sub %362, %363  : i64
    %365 = llvm.inttoptr %364 : i64 to !llvm.ptr<f32>
    %366 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %367 = llvm.insertvalue %358, %366[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %365, %367[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.insertvalue %369, %368[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %195, %370[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %198, %371[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %201, %372[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %204, %373[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %350, %374[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %349, %375[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %204, %376[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %348, %377[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%379 : i64)
  ^bb37(%381: i64):  // 2 preds: ^bb36, ^bb47
    %382 = llvm.icmp "slt" %381, %195 : i64
    llvm.cond_br %382, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%383 : i64)
  ^bb39(%385: i64):  // 2 preds: ^bb38, ^bb46
    %386 = llvm.icmp "slt" %385, %198 : i64
    llvm.cond_br %386, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%387 : i64)
  ^bb41(%389: i64):  // 2 preds: ^bb40, ^bb45
    %390 = llvm.icmp "slt" %389, %201 : i64
    llvm.cond_br %390, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %391 = llvm.mlir.constant(0 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%391 : i64)
  ^bb43(%393: i64):  // 2 preds: ^bb42, ^bb44
    %394 = llvm.icmp "slt" %393, %204 : i64
    llvm.cond_br %394, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %395 = llvm.extractvalue %303[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %396 = llvm.extractvalue %303[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.mul %381, %396  : i64
    %398 = llvm.extractvalue %303[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mul %385, %398  : i64
    %400 = llvm.add %397, %399  : i64
    %401 = llvm.extractvalue %303[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.mul %389, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.add %403, %393  : i64
    %405 = llvm.getelementptr %395[%404] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %406 = llvm.load %405 : !llvm.ptr<f32>
    %407 = llvm.intr.sin(%406)  : (f32) -> f32
    %408 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.extractvalue %378[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.mul %381, %409  : i64
    %411 = llvm.extractvalue %378[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.mul %385, %411  : i64
    %413 = llvm.add %410, %412  : i64
    %414 = llvm.extractvalue %378[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.mul %389, %414  : i64
    %416 = llvm.add %413, %415  : i64
    %417 = llvm.add %416, %393  : i64
    %418 = llvm.getelementptr %408[%417] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %407, %418 : !llvm.ptr<f32>
    %419 = llvm.add %393, %392  : i64
    llvm.br ^bb43(%419 : i64)
  ^bb45:  // pred: ^bb43
    %420 = llvm.add %389, %388  : i64
    llvm.br ^bb41(%420 : i64)
  ^bb46:  // pred: ^bb41
    %421 = llvm.add %385, %384  : i64
    llvm.br ^bb39(%421 : i64)
  ^bb47:  // pred: ^bb39
    %422 = llvm.add %381, %380  : i64
    llvm.br ^bb37(%422 : i64)
  ^bb48:  // pred: ^bb37
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.null : !llvm.ptr<f32>
    %429 = llvm.getelementptr %428[%423] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %430 = llvm.ptrtoint %429 : !llvm.ptr<f32> to i64
    %431 = llvm.mlir.constant(16 : index) : i64
    %432 = llvm.add %430, %431  : i64
    %433 = llvm.call @malloc(%432) : (i64) -> !llvm.ptr<i8>
    %434 = llvm.bitcast %433 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %435 = llvm.ptrtoint %434 : !llvm.ptr<f32> to i64
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.sub %431, %436  : i64
    %438 = llvm.add %435, %437  : i64
    %439 = llvm.urem %438, %431  : i64
    %440 = llvm.sub %438, %439  : i64
    %441 = llvm.inttoptr %440 : i64 to !llvm.ptr<f32>
    %442 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %443 = llvm.insertvalue %434, %442[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %441, %443[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.insertvalue %445, %444[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %423, %446[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %424, %447[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %425, %448[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %426, %449[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %424, %450[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %425, %451[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %426, %452[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %427, %453[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.icmp "sgt" %195, %14 : i64
    %456 = llvm.icmp "sgt" %198, %14 : i64
    %457 = llvm.icmp "sgt" %201, %14 : i64
    %458 = llvm.icmp "sgt" %204, %14 : i64
    %459 = llvm.icmp "sgt" %195, %14 : i64
    %460 = llvm.icmp "sgt" %198, %14 : i64
    %461 = llvm.icmp "sgt" %201, %14 : i64
    %462 = llvm.icmp "sgt" %204, %14 : i64
    %463 = llvm.mlir.constant(0 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%463 : i64)
  ^bb49(%466: i64):  // 2 preds: ^bb48, ^bb59
    %467 = llvm.icmp "slt" %466, %464 : i64
    llvm.cond_br %467, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%468 : i64)
  ^bb51(%471: i64):  // 2 preds: ^bb50, ^bb58
    %472 = llvm.icmp "slt" %471, %469 : i64
    llvm.cond_br %472, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%473 : i64)
  ^bb53(%476: i64):  // 2 preds: ^bb52, ^bb57
    %477 = llvm.icmp "slt" %476, %474 : i64
    llvm.cond_br %477, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%478 : i64)
  ^bb55(%481: i64):  // 2 preds: ^bb54, ^bb56
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %483 = llvm.select %455, %466, %15 : i1, i64
    %484 = llvm.select %456, %471, %15 : i1, i64
    %485 = llvm.select %457, %476, %15 : i1, i64
    %486 = llvm.select %458, %481, %15 : i1, i64
    %487 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %488 = llvm.extractvalue %378[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.mul %483, %488  : i64
    %490 = llvm.extractvalue %378[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.mul %484, %490  : i64
    %492 = llvm.add %489, %491  : i64
    %493 = llvm.extractvalue %378[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.mul %485, %493  : i64
    %495 = llvm.add %492, %494  : i64
    %496 = llvm.add %495, %486  : i64
    %497 = llvm.getelementptr %487[%496] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %498 = llvm.load %497 : !llvm.ptr<f32>
    %499 = llvm.select %459, %466, %15 : i1, i64
    %500 = llvm.select %460, %471, %15 : i1, i64
    %501 = llvm.select %461, %476, %15 : i1, i64
    %502 = llvm.select %462, %481, %15 : i1, i64
    %503 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.extractvalue %378[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.mul %499, %504  : i64
    %506 = llvm.extractvalue %378[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.mul %500, %506  : i64
    %508 = llvm.add %505, %507  : i64
    %509 = llvm.extractvalue %378[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.mul %501, %509  : i64
    %511 = llvm.add %508, %510  : i64
    %512 = llvm.add %511, %502  : i64
    %513 = llvm.getelementptr %503[%512] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %514 = llvm.load %513 : !llvm.ptr<f32>
    %515 = llvm.fadd %498, %514  : f32
    %516 = llvm.extractvalue %454[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.add %466, %471  : i64
    %518 = llvm.add %517, %476  : i64
    %519 = llvm.add %518, %481  : i64
    %520 = llvm.getelementptr %516[%519] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %515, %520 : !llvm.ptr<f32>
    %521 = llvm.add %481, %480  : i64
    llvm.br ^bb55(%521 : i64)
  ^bb57:  // pred: ^bb55
    %522 = llvm.add %476, %475  : i64
    llvm.br ^bb53(%522 : i64)
  ^bb58:  // pred: ^bb53
    %523 = llvm.add %471, %470  : i64
    llvm.br ^bb51(%523 : i64)
  ^bb59:  // pred: ^bb51
    %524 = llvm.add %466, %465  : i64
    llvm.br ^bb49(%524 : i64)
  ^bb60:  // pred: ^bb49
    llvm.return %454 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.extractvalue %44[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %57[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %44[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %58[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.getelementptr %48[%79] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %80 : !llvm.ptr<ptr<i8>>
    %81 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %81 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

